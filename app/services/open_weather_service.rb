require 'open_weather'
class OpenWeatherService < WeatherService
  def call(city, options)
    response = OpenWeather::Current.city(city, options)
    #response = OpenWeather::Forecast.city("Cochin, IN")
    temperature = response.main.temp (temp_min, temp_max)
    description = response.weather.description # "Partly cloudy (night)"
    return temperature, description
    #need save
  end
end
