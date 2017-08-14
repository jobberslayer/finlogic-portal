require 'optparse'

o = {}
OptionParser.new do |opt|
  opt.on('--org_name ORGANIZATION_NAME') { |x| o[:org_name] = x }
  opt.on('--loc_names LOC1,LOC2,LOC3', Array) { |x| o[:loc_names] = x }
  opt.on('--first FNAME') { |x| o[:fname] = x }
  opt.on('--last LNAME') { |x| o[:lname] = x }
  opt.on('--email EMAIL') { |x| o[:email] = x }
  opt.on('--role ROLE') { |x| o[:role] = x }
  opt.on('--password PASSWORD') { |x| o[:password] = x }
  opt.on('--send_email') {  o[:send_email] = true }
  opt.on('--myhelp') { puts opt; exit }
end.parse!

if o[:password].nil?
  puts 'Need to provide temp password.'
  exit
end
password = o[:password]

locations = []
org = Organization.by_name(o[:org_name])
o[:loc_names].each do |loc_name|
  l = Location.by_name(o[:org_name], loc_name)

  unless l && o
    puts "Could not find location #{loc_name}"
    exit
  end
  locations.push l
end

if User.find_by(email: o[:email])
  p "Email already exists"
  exit
end

u = User.new({
  :email => o[:email],
  :password => password,
  :password_confirmation => password,
  role: o[:role],
  fname: o[:fname],
  lname: o[:lname],
})

u.organization = org

unless u
  puts u.errors
  exit
end

u.their_locations.concat locations

u.save

if o[:send_email]
  u.send_reset_password_instructions
end
