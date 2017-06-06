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
    @history = History.create(history_params)
    # respond_to do |format|
    #   format.js
    #   format.html
    # end
    # render "show"
  end

  def update
    @hisroty.city.delete(city) if @history.city.include?(city)
    @history.city.push(city)
    respond_to do |format|
      format.js
    end
    render "show"
  end

  private

  def find_history
    if
      @history = History.find_by(user_id: params[:user_id])
      #@history = History.where("user_id = ?", params[:user_id])
    else
      @history = History.create
    end
  end

  def history_params
    params.require(:history).permit(:city, :user_id)
  end
end
