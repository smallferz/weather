class WeatherService
  #TODO rescue 'can not parse'
  def self.call(city)
    options = { units: "metric", APPID: f399395adfba6 }
    # TODO NameError: undefined local variable or method `f399395adfba6' for main:Object
    OpenWeatherService.new.call(city, options)
    #YahooWeatherService.new.call(city)
  end

  # def convert_temperature(temperature)
  #   TemperatureConvertor.from_fahrenheit(temperature)
  # end

  # def parse_json(data)
  #   begin
  #
  #   rescue Exception
  #     puts "ParseError"
  #   end
  # end
end
