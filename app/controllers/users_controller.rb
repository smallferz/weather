class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      cookies.signed[:current_user_uuid] = user.unique_identifier
    end
  end
end
