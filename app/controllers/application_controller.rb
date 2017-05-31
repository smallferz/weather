class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_user
    if @current_user.current_user
      #upload session
    else
      render 'users/create'
    end
  end


  private
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by_unique_identifier(session[:current_user_id])
  end
end
