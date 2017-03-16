require 'optparse'

o = {}
OptionParser.new do |opt|
  opt.on('--org_name LOCATION_NAME') { |x| o[:org_name] = x }
  opt.on('--loc_name LOCATION_NAME') { |x| o[:loc_name] = x }
  opt.on('--first FNAME') { |x| o[:fname] = x }
  opt.on('--last LNAME') { |x| o[:lname] = x }
  opt.on('--email EMAIL') { |x| o[:email] = x }
  opt.on('--role ROLE') { |x| o[:role] = x }
  opt.on('--send_email') {  o[:send_email] = true }
  opt.on('--myhelp') { puts opt; exit }
end.parse!

password = '11223344556677'

l = Location.by_name(o[:org_name], o[:loc_name])

unless l
  puts "Could not find location #{o[:loc_name]}"
  exit
end

i = Information.new({
  role: o[:role],
  fname: o[:fname],
  lname: o[:lname],
})
unless i
  puts i.errors
  exit
end
l.informations.push i

if User.find_by(email: o[:email])
  p "Email already exists"
  exit
end

u = User.new({
  :email => o[:email], :password => password, :password_confirmation => password })
unless u
  puts u.errors
  exit
end

u.information = i

i.save
u.save
l.save

if o[:send_email]
  u.send_reset_password_instructions
end
