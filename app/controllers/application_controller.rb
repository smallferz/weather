class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private
  def current_user
    if
      User.find_by_unique_identifier(cookies[:current_user_uuid])
    else
      User.create
    end
  end
end
