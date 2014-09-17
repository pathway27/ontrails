require 'httparty'
require 'json'

data = {:appid => "2_22495_0MfyAMpQo", :key => "MBWUgVWnpW9arpD", :reqtype => "fetch", data: "<contact_id>24866</contact_id>"}

data2 = "appid=#{data[:appid]}&key=#{data[:key]}&reqType=fetch&data=#{data[:data]}"

payload = data2.to_s
url = "https://api.ontraport.com/cdata.php"
puts payload
response = HTTParty.post(url,:body => payload)
puts response
