class BaseWeathew < ApplicationRecord
  #TODO rescue 'can not parse'
  def call(city)
    OpenWeather.new.call(city)
    WeatherXoap.new.call(city)
    YahooWeather.new.call(city)
  end

  def parse_json(data)
  end
end
