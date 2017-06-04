require 'yahoo_weather'

class YahooWeatherService < WeatherService
  def call
    client = YahooWeather::Client.new
    response = client.fetch_by_location(city)
    response.units.temperature        # "F"
    temperature = response.condition.temp           # 60
    #temperature.convert_temperature
    description = response.condition.code('string') # "Partly cloudy (night)"
    return temperature, description
  end

  def city_location(city)
    #@city_location = {city name},{country code}
  end
end
