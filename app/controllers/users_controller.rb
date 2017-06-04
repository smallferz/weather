class UsersController < ApplicationController
  def index
  end

  def show
    @current_user = User.find(cookies[:current_user_uuid])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      cookies.signed[:current_user_uuid] = user.unique_identifier
    end
  end
end
