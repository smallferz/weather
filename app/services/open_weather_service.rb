require 'open_weather'
class OpenWeatherService < BaseService
  def call(city)
    #current_city = OpenWeatherService.current_city(city)
    response = OpenWeather::Current.city(current_city)
    response.data_selection
  end

  def current_city(city)
    #{city name},{country code} "Cochin, IN"(without region/oblast)
    #lib/open_weather/base.rb
    #def extract_options!(options)
  end

  def data_selection(data)
  end
end
