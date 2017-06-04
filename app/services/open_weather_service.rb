require 'open_weather'
class OpenWeatherService < WeatherService
  def call(city, options)
    response = OpenWeather::Current.city(city, options)
    #response = OpenWeather::Current.city("Cochin, IN", options)
    current_weather = response.fetch("weather")
    #[{"id"=>501, "main"=>"Rain", "description"=>"moderate rain", "icon"=>"10n"}]
    weather = Hash[*current_weather]
    #{"id"=>501, "main"=>"Rain", "description"=>"moderate rain", "icon"=>"10n"}
    description = weather["description"]
    #"moderate rain"
    temp = response.fetch("main")
    temp_min = temp["temp_min"]
    temp_max = temp["temp_max"]
    return temp_min, temp_max, description
    #need save
  end
end
