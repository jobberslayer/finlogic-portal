require 'optparse'
require 'csv'
require Rails.root.join('lib/string').to_s

o = {}    
OptionParser.new do |opt|    
  opt.on('--file FILE') { |x| o[:file] = x }    
  opt.on('--myhelp') { puts opt; exit }    
end.parse! 

csv = CSV.read(o[:file], headers: true)

#fields = csv[nil].reject { |f| f.blank? }
fields = csv[nil]

org = Organization.find_by(name: 'AOII')
if org.nil?
  p "Can not find organization AOII"
  exit
end

csv.headers.each do |house|
  next if house.nil?

  location = Location.find_by(name: house, organization_id: org.id)
  if location.nil?
    p "Location #{house} can not be found."
    next
  end
 

  row = AoiiIncomeStatement.new

  data_col = csv[house]

  i = -1 
  fields.each do |f|
    i += 1
    next if f.blank?
    col_name = f.to_col_name  
    next unless row.has_attribute? col_name
    row[col_name.to_sym] = data_col[i]
  end
  location.aoii_income_statements.push row
  location.save
end

