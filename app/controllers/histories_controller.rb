class HistoriesController < ApplicationController
  def index
    @history = History.find(params[:id])
    @history.city.last(3)

    OpenWeather.new.call(city)
    WeatherXoap.new.call(city)
    YahooWeather.new.call(city)
  end

  def show
  end

  def create
    @history = History.new(history_params)
    @history.save
    redirect_to @history
  end

  def update
    @history = History.find(params[:id])
      if @history.include?(city)
        @hisroty.delete(city)
      end
    @history.update(history_params)
    end

  private
  def history_params
    params.require(:history).permit(:city)
  end
end
