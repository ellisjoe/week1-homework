# Activate some helpful built-in Ruby libraries
require 'open-uri'
require 'json'

# Our classroom location
location = "5555 South Ellis Avenue, Chicago, Illinois, 60637"

# Convert to an HTTP-compatible querystring parameter
location = URI.escape(location)

# Send an HTTP request to Google
json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{location}&sensor=false").read

# Parse the response string into a Ruby data structure
# (You will need to figure out what kind of structure it is)
data = JSON.parse(json_data)

# TO DO:
# Replace the following 0's with expressions
# that will extract the latitude and longitude

# Get the first result
result = data["results"][0]

# Get the location data from the result
location = result["geometry"]["location"]

# Get lat and long from location data
latitude = location["lat"]
longitude = location["lng"]

# Output latitude and longitude to the screen
puts "Latitude: #{latitude}"
puts "Longitude: #{longitude}"
