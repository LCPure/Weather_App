require 'barometer'


def determine_weather(location) #method to measure weather conditions
 barometer = Barometer.new(location).measure
 
end


puts "Please enter your location"
location = gets #get location into a string variable
weather = determine_weather(location) #call method to measure temperature
tomorrow = Time.now.strftime('%d').to_i+1

weather.forecast.each do |forecast| #loop through forecast array
  day = forecast.starts_at.day
  if(day == tomorrow) #compare day of week
   dayname = 'Tomorrow'
   else
   dayname = forecast.starts_at.strftime('%A')
   end
  
  puts dayname + ' is going to be ' + forecast.icon +
  ' with a low temperature of ' + forecast.low.f.to_s + ' and a high temperature of ' +forecast.high.f.to_s #output condition, low temp, high temp
  end


