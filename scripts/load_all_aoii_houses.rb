require 'csv'

org = Organization.find_by(name: 'AOII')

unless org
  puts "Can not find AOII organtization"
  exit
end

data_file = "#{Rails.root}/data/aoii_sample.csv"

puts 
CSV.foreach(data_file) do |row|
  row[1..row.size-2].each do |house|
    l = Location.new({
      name: house
    })
    unless l
      puts "Problem creating location #{house}"
      puts l.errors
      exit
    end
    l.save
    org.locations.push l
  end
  break
end

org.save