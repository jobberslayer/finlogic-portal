require 'csv'

org = Organization.by_name('AOII')
if org.nil?
  org = Organization.new()
  org.name = 'AOII'
  org.save
end

unless org
  puts "Can not find AOII organtization"
  exit
end

data_file = "#{Rails.root}/data/aoii_houses.csv"

puts
CSV.foreach(data_file) do |row|
  row[0..row.size].each do |house|
    l = Location.new({
      name: house
    })
    unless l
      puts "Problem creating location #{house}"
      puts l.errors
      exit
    end
    p "Saving #{house}"
    l.save
    org.locations.push l
  end
  break
end

org.save
