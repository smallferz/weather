require 'weather-api'

class YahooWeatherService < BaseService
  def call
    response = Weather.lookup_by_location(@city_location, Weather::Units::FAHRENHEIT)
    temperature = response.condition.temp
    description = response.condition.text
    return temperature, description
  end

  def city_location(city)
    #@city_location = {city name},{country code}
  end
end
