require 'weather-api'

class WeatherApiService < WeatherService
  def call(city)
    response = Weather.lookup_by_location(city, Weather::Units::CELSIUS)
    #response = Weather.lookup_by_location('San Francisco, CA', Weather::Units::FAHRENHEIT)
    temperature = response.condition.temp
    description = response.condition.text
    #"Mostly Cloudy"
    return temperature, description
  end
end
