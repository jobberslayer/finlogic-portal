require 'optparse'
require 'csv'
require Rails.root.join('lib/string').to_s

o = {}    
OptionParser.new do |opt|    
  opt.on('--col COLUMN') { |x| o[:col] = x.to_i }    
  opt.on('--file FILE') { |x| o[:file] = x }    
  opt.on('--myhelp') { puts opt; exit }    
end.parse! 

args = []
CSV.foreach(o[:file]) do |row|
  field = row[o[:col]]
  if !field.blank?
    args.push "#{field.to_col_name}:decimal"
  end
end

puts args.join(' ')