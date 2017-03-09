require 'optparse'
require 'csv'
require Rails.root.join('lib/string').to_s

o = {}    
OptionParser.new do |opt|    
  opt.on('--file FILE') { |x| o[:file] = x }    
  opt.on('--myhelp') { puts opt; exit }    
end.parse! 

csv = CSV.read(o[:file])

org = Organization.find_by(name: 'AOII')
if org.nil?
  p "Can not find organization AOII"
  exit
end


houses = csv[3][5..csv[3].size-2]
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

  house_num = 5
  houses.each do |house|
    unless statement_objs.key?(house)
      location = Location.find_by(name: house, organization_id: org.id)
      income_statement = IncomeStatement.new
      income_statement.title1 = csv[0][0]
      income_statement.title2 = csv[1][0]
      income_statement.time_period = csv[2][0]
      location.income_statements.push income_statement
      income_statement.save
      location.save
      statement_objs[house] = income_statement
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