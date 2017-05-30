require 'weather-api'
WeatherMan.partner_id = '0123456789'
WeatherMan.license_key = '0123456789abcdef'

class WeatherXoap < Base
  def call(locations)
    response = WeatherMan.new(locations)
    #Current Conditions
  end

  def city_location(city)
    locations = WeatherMan.search('city')
#    @city_location = 'Cherkassy, Cherkasy Oblast, Ukraine'
  end
end
