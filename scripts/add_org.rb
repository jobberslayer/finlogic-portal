require 'optparse'

o = {}    
OptionParser.new do |opt|    
  opt.on('--name ORG_NAME') { |x| o[:name] = x }    
  opt.on('--address ADDRESS') { |x| o[:address] = x }    
  opt.on('--city CITY') { |x| o[:city] = x }    
  opt.on('--state STATE') { |x| o[:state] = x }    
  opt.on('--zip ZIP') { |x| o[:zip] = x }    
  opt.on('--contact CONTACT_NAME') { |x| o[:contact] = x }    
  opt.on('--email CONTACT_EMAIL') { |x| o[:email] = x }    
  opt.on('--phone CONTACT_PHONE') { |x| o[:phone] = x }    
  opt.on('--myhelp') { puts opt; exit }    
end.parse! 

o = Organization.new({
  name: o[:name], 
  address: o[:address],
  city: o[:city],
  state: o[:state],
  zip: o[:zip],
  contact: o[:contact],
  email: o[:email],
  phone: o[:phone]
})

unless o
  puts o.errors
  exit
end

o.save