require 'optparse'

o = {}
OptionParser.new do |opt|
  opt.on('--org_name ORG_NAME') { |x| o[:org_name] = x }
  opt.on('--name LOC_NAME') { |x| o[:name] = x }
  opt.on('--address ADDRESS') { |x| o[:address] = x }
  opt.on('--city CITY') { |x| o[:city] = x }
  opt.on('--state STATE') { |x| o[:state] = x }
  opt.on('--zip ZIP') { |x| o[:zip] = x }
  opt.on('--contact CONTACT_NAME') { |x| o[:contact] = x }
  opt.on('--email CONTACT_EMAIL') { |x| o[:email] = x }
  opt.on('--phone CONTACT_PHONE') { |x| o[:phone] = x }
  opt.on('--myhelp') { puts opt; exit }
end.parse!

org = Organization.by_name(o[:org_name])
if Organization.nil?
  p "Organization does not exist"
  exit
end

if Location.where(name: o[:name], organization_id: org.id).count > 0
  p "Location already exists in the org"
  exit
end

l = Location.new({
  name: o[:name],
  address: o[:address],
  city: o[:city],
  state: o[:state],
  zip: o[:zip],
  contact: o[:contact],
  email: o[:email],
  phone: o[:phone]
})

if l.nil?
  puts l.errors.each {|m| p m}
  exit
end

org.locations.push l

l.save
org.save
