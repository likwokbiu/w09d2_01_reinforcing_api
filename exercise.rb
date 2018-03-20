require 'httparty'
require 'json'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards = toronto_wards_json["objects"]

@toronto_wards = []
toronto_wards.each do |ward|
  @toronto_wards << ward["name"]
end

puts "TORONTO WARDS:-"
puts @toronto_wards

ottawa_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/ottawa-wards/')

ottawa_wards_json = JSON.parse(ottawa_wards_response.body)

ottawa_wards = ottawa_wards_json["objects"]

@ottawa_wards = []
ottawa_wards.each do |ward|
  @ottawa_wards << ward["name"]
end

puts
puts "OTTAWA WARDS:-"
puts @ottawa_wards
