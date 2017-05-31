class UsersController < ApplicationController
  def index
  end

  def show
    @current_user = User.find(session[:current_user_id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:current_user_id] = user.unique_identifier
      session[:current_user_id] = user.id
    end
  end
end
