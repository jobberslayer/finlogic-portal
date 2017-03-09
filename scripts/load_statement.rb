require 'optparse'
require 'csv'
require Rails.root.join('lib/string').to_s

o = {}    
OptionParser.new do |opt|    
  opt.on('--file FILE') { |x| o[:file] = x }    
  opt.on('--org ORGNAME') { |x| o[:org_name] = x }    
  opt.on('--income') { o[:income] = true }    
  opt.on('--balance') { o[:balance] = true }    
  opt.on('--myhelp') { puts opt; exit }    
end.parse! 

statement_type = nil
if !o[:income] && !o[:balance]
  p "Must either be an income or balance statement."
  exit
elsif o[:income] && o[:balance]
  p "Can only choose one type of statement."
  exit
elsif o[:income]
  statement_type = Statement::TYPE_INCOME 
elsif o[:balance]
  statement_type = Statement::TYPE_BALANCE 
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

i = 1
csv[4..csv.size].each do |row|
  name = nil
  col = nil
  if !row[0].blank?
    name = row[0]
    col = 1
  elsif !row[1].blank?
    name = row[1] 
    col = 2
  elsif !row[2].blank?
    name = row[2] 
    col = 3
  elsif !row[3].blank?
    name = row[3] 
    col = 4
  elsif !row[4].blank?
    name = row[4] 
    col = 5
  else
    next
  end

  house_num = start_data_col 
  houses.each do |house|
    unless statement_objs.key?(house)
      location = Location.by_name(org.name, house)
      statement = Statement.new
      statement.statement_type = statement_type
      statement.title1 = csv[0][0]
      statement.title2 = csv[1][0]
      statement.time_period = csv[2][0]
      location.statements.push statement
      statement.save
      location.save
      statement_objs[house] = statement
    end

    statement_objs[house]["key#{i}"] = name
    statement_objs[house]["col#{i}"] = col
    amount =  row[house_num].blank? ? row[house_num] : row[house_num].gsub(',','')
    statement_objs[house]["amount#{i}"] = amount 
    house_num += 1
  end

  i += 1
end

statement_objs.values.each do |o|
  o.save
end