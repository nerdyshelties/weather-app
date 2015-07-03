#This is your BIG Skillcrush 104 class project!
#You will create a weather app that allows a user to input their location (zip code, city, state, etc.), hit submit, and then, depending on real-time data that you will source from a public API, see a message customized to what the weather is like where they live.
#STEP 1: USER INPUTS THEIR LOCATION
#The user will tell you where they are by submitting their zipcode!
#STEP 2: YOU USE A PUBLIC API TO FIND OUT WHAT THE WEATHER IS IN THEIR AREA
#This all happens behind the scenes! And you will be using the Yahoo Weather API Gem.
#STEP 3: DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE FOLLOWING SCREENS
#If it’s sunny: it’s 85 degrees and sunny!
#If it’s cloudy: 55 degrees and crazy cloudy!
#If it’s rainy: 60 degrees and crazy rainy!
#If it’s snowy: 32 degrees and super snowy!
#STEP 4: THEN TURN IT INTO A FORECASTING APP
#Once you’ve made it possible to find out what the weather is like RIGHT NOW, let’s peek into the future and find out what’s in store for the next five days.
#Not sure how to do all that? No worries! We’ll walk you through it ;) Just click that big “Next” button up top!

require 'yahoo_weatherman'
puts "Enter location, city or zipcode:"
zip = gets.chomp

client = Weatherman::Client.new
response = client.lookup_by_location(zip).condition

puts "It's #{response['text']} and #{response['temp']*9/5+32} degrees fahrenheit"

