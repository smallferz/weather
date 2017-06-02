require 'weather_man'
WeatherMan.partner_id = '0123456789'
WeatherMan.license_key = '0123456789abcdef'

class WeatherXoapService < BaseService
  def call(city)
    locations = WeatherMan.search(city)
    # @city = 'Cherkassy, Cherkasy Oblast, Ukraine'
    response = WeatherMan.new(locations)
    #Current Conditions
    temperature = weather.current_conditions.temperature
    description = weather.current_conditions.description
    return temperature, description
  end
end
