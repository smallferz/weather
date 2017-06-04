class HistoriesController < ApplicationController
  before_action :find_history, only: [:index, :show, :update]

  def index
    @cities = @history.city.last(3)
  end

  def show
    @history.city.last = city
    WeatherService.call(city)
  end

  def create
    history = History.create(history_params)
  end

  def update
    @hisroty.city.delete(city) if @history.city.include?(city)
    @history.city.push(city)
    #dont add, replace
  end

  private

  def find_history
    @history = History.find_by(user_id: params[:user_id])
    #@history = History.where("user_id = ?", params[:user_id])
  end

  def history_params
    params.require(:history).permit(:city, :user_id)
  end
end
