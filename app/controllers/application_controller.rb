class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private
  def current_user
  #   if @_current_user ||= session[:current_user_id] &&
  #     User.find_by_unique_identifier(session[:current_user_id])
  #     #upload session
  #   else
  #     # render 'users/create'
  #   end
  end
end
