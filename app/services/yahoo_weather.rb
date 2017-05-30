require 'weather-api'

class YahooWeather < Base
  def call
    response = Weather.lookup_by_location(@city_location, Weather::Units::FAHRENHEIT)
  end

  def city_location(city)
    @city_location = 'Cherkassy, Cherkasy Oblast, Ukraine'
  end

  def data_selection(response)

  end
end
