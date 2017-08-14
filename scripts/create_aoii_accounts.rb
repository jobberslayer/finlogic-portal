require 'csv'
require 'optparse'

o = {}
OptionParser.new do |opt|
  opt.on('--file FILE') { |x| o[:file] = x}
  opt.on('--email') {o[:send_email] = true}
  opt.on('--password PASSWORD') {|x| o[:password] = x}
  opt.on('--myhelp') { puts opt; exit }
end.parse!

if o[:file].blank?
  puts "Must provide a file to process."
  exit
end

data_file = o[:file]

org = Organization.by_name('AOII')
if org.nil?
  puts "Can't find organization!"
  exit
end

if o[:password].nil?
  puts 'Need to provide temp password'
  exit
end
password = o[:password]

puts "using password...#{password}"

puts "Preprocessing check..."

problem = false
ready_rows = []
CSV.foreach(data_file, {headers: true}) do |row|
  fname = row[0]
  lname = row[1]
  email = row[2]
  house = row[3]

  if fname.blank? || lname.blank?
    puts "Incomplete name #{fname} #{lname}"
    problem = true
    next
  end

  if email.blank?
    puts "Email missing for #{fname} #{lname}."
    problem = true
    next
  end

  u = User.find_by(email: email)
  if u.nil?
    role = house.upcase == 'HQ' ? 'super' : 'user'
    u = User.new({
      email: email,
      password: password,
      password_confirmation: password,
      role: role,
      fname: fname,
      lname: lname,
    })
    org.users.push u
    u.save
    org.save
  else
    puts "Account already exists, #{u.email}"
  end

  if house.blank?
    puts "House missing for #{fname} #{lname}."
    problem = true
    next
  end

  location = Location.by_name('AOII', house)
  if location.nil? && house != 'HQ'
    puts "House #{house} does not exist"
    problem = true
    next
  end

  hash = {
    user:  u,
    fname: fname,
    lname: lname,
    email: email,
    house: house
  }

  ready_rows.push hash
end

if problem
  puts "Problems. Not creating anything."
  exit
else
  puts "Looks good. Creating users."
end

ready_rows.each do |info|
  if info[:house] == 'HQ'
    info[:user].locations.push org.locations.first
      info[:user].save
  else
    location = Location.by_name('AOII', info[:house])
    if info[:user].locations.include? location
      puts "#{info[:user].name} already assigned #{location.name}"
    else
      info[:user].locations.push location
      unless info[:user].save
        puts "problem saving...#{info[:user].errors.messages}"
      end
    end
  end
end
