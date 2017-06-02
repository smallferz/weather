class BaseService < ApplicationRecord
  #TODO rescue 'can not parse'
  def call(city)
    OpenWeatherService.new.call(city)
    WeatherXoapService.new.call(city)
    YahooWeatherService.new.call(city)
  end

  def parse_json(data)
    begin
      
    rescue Exception
      puts "ParseError"
    end
  end
end
