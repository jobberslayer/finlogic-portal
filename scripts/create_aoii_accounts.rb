require 'csv'
require 'optparse'

o = {}
OptionParser.new do |opt|
  opt.on('--file FILE') { |x| o[:file] = x}
  opt.on('--email') {o[:send_email] = true}
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
  unless u.nil?
    puts "Account already exists, #{u.email}"
    problem = true
    next
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
    # create aoii super user
  else
    # create a normal aoii user
  end
end
