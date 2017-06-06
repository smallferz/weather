class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private
  def current_user
    if @user ||= cookies[:uuid]
      User.find_by(unique_identifier: cookies[:uuid])
    else
      @user = User.create
      @user.set_cookies
    end
  end

  def set_cookies
    uuid = @user.unique_identifier
    cookies[:uuid] = {
     :value => uuid,
     :expires => 1.year.from_now,
     :domain => '.localhost'
    }
  end
end
