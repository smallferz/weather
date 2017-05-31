class HistoriesController < ApplicationController
  def index
    @history = History.find(params[:id])
    @history.city.last(3)
  end

  def show
    @history = History.find(params[:id])
    @history.city.last
    BaseWeather.new.call(city)
  end

  def create
    @history = History.new(params.require(:history).permit(:city, :user_id))
    @history.save
    redirect_to 'show'
  end

  def update
    @history = History.find(params[:id])
      if @history.include?(city: '')
        @hisroty.delete(city: '')
      end
    @history.update(history_params)
    redirect_to 'show'
    end

  private
  def history_params
    params.require(:history).permit(:city)
  end
end
