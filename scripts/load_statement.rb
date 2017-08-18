require 'optparse'
require 'csv'
require 'pp'
require Rails.root.join('lib/string').to_s

o = {}
OptionParser.new do |opt|
  opt.on('--file FILE') { |x| o[:file] = x }
  opt.on('--org ORGNAME') { |x| o[:org_name] = x }
  opt.on('--income') { o[:income] = true }
  opt.on('--balance') { o[:balance] = true }
  opt.on('--budget') { o[:budget] = true }
  opt.on('--forecast') { o[:forecast] = true }
  opt.on('--myhelp') { puts opt; exit }
end.parse!

version = 'aoii01'

statement_type = nil
if !o[:income] && !o[:balance] && !o[:budget] && !o[:forecast]
  p "Must either be an income or balance or budget or forecast statement."
  exit
elsif o[:income] && o[:balance] && o[:budget] && o[:forecast]
  p "Can only choose one type of statement."
  exit
elsif o[:income]
  statement_type = Statement::TYPE_INCOME
elsif o[:balance]
  statement_type = Statement::TYPE_BALANCE
elsif o[:budget]
  statement_type = Statement::TYPE_BUDGET
elsif o[:forecast]
  statement_type = Statement::TYPE_FORECAST
end

csv = CSV.read(o[:file])

org = Organization.by_name(o[:org_name])
if org.nil?
  p "Can not find organization #{o[:org_name]}"
  exit
end

start_data_col = csv[3].count(nil)

houses = csv[3].reject {|h| h.blank?}
statement_objs = {}
house_data = {}

stop = false
houses.each do |house|
  location = Location.by_name(org.name, house)
  if location.nil?
    stop = true
    puts "Location #{house} not found."
  end
end

exit if stop

i = 1
csv[4..csv.size].each do |row|
  name = nil
  col = nil
  (0..start_data_col-1).each do |c|
    if !row[c].blank?
      name = row[c]
      col = c + 1
      break
    end
  end

  house_num = start_data_col
  houses.each do |house|
    unless statement_objs.key?(house)
      location = Location.by_name(org.name, house)
      if location.nil?
        puts "Location #{house} not found."
        next
      end
      statement = Statement.new
      statement.statement_type = statement_type
      statement.title1 = csv[0][0]
      statement.title2 = csv[1][0]
      statement.time_period = csv[2][0]
      statement.statement_version = version
      location.statements.push statement
      statement.save
      location.save
      statement_objs[house] = statement
      house_data[house] = []
    end

    amount =  row[house_num].blank? ? row[house_num] : row[house_num].gsub(',','')
    hash = {
      key: name,
      col: col,
      amount: amount
    }
    house_data[house].push hash

    house_num += 1
  end

  i += 1
end

DELIM = '|'

def add_path(path, piece, place)
  path += "#{DELIM}#{piece}"
  while path.count(DELIM) < place do
    path = "#{DELIM}#{path}"
  end
  return path
end

def backup(path, diff)
  if diff > 0
    parts = path.split(DELIM, -1)
    (1..diff).each do |x|
      parts.pop
    end
    return parts.join(DELIM)
  else
    return path
  end
end

def rebuild_path(path, new_part, last_col, col)
  if col - last_col > 0
    path = add_path(path, new_part, col)
  elsif col - last_col < 0
    path = backup(path, last_col - col)
  else
    path = backup(path, 1)
    path += "#{DELIM}#{new_part}"
  end

  return path
end

def scrub_amount(amt)
  return amt.gsub('$','').gsub('(','-').gsub(')','').strip
end

path = ''
last_col = 0
houses.each do |house|
  path_struct = []
  d = house_data[house]
  d.each do |h|
    path = rebuild_path(path, h[:key], last_col, h[:col].to_i)
    h[:path] = path.path_chomp
    h[:indent] = path.path_child_indent
    path_struct.push h
    last_col = h[:col].to_i
  end
  house_data[house] = path_struct
end

stoplight = []

houses.each do |house|
  #pp house_data[house]
  #exit
  if o[:forecast]
    sld = {}
    sld[:house] = house
    house_data[house].each do |h|
      # stop light data
      next if h[:key].nil?
      if h[:key].strip == 'Stoplight Indicator'
        sld[:stoplight] = h[:amount].gsub('%', '').strip
      elsif h[:key].strip == 'Forecasted Net Income'
        sld[:forecasted_net_income] = scrub_amount(h[:amount])
      elsif h[:key].strip == 'Net Income'
        sld[:net_income] = scrub_amount(h[:amount])
      elsif h[:key].strip == 'Forecasted Cash'
        sld[:forecasted_cash] = scrub_amount(h[:amount])
      elsif h[:key].strip == 'Cash'
        sld[:cash] = scrub_amount(h[:amount])
      end
    end
    stoplight.push sld
  end
  statement_objs[house].statement_data = house_data[house].to_json
end

# Report covers all houses
# Only admins & super users can via
# Owned by an organization
if o[:forecast]
  statement = Statement.new
  statement.statement_type = Statement::TYPE_STOPLIGHT
  statement.title1 = csv[0][0]
  statement.title2 = 'Stoplight Report'
  statement.time_period = csv[2][0]
  statement.statement_version = version
  statement.statement_data = stoplight.to_json
  org.statements.push statement
  statement.save
  org.save
end


i = 0
statement_objs.values.each do |obj|
  puts "Saving #{obj.location.name}"
  obj.save
  i += 1
end

puts "Saved: #{i} statements"
