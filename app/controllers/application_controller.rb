class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private
  def current_user
    User.first
    # if
    #   User.find_by(unique_identifier: cookies.signed[:current_user_uuid])
    # else
    #   User.create
    # end
  end
end
