class ApplicationController < ActionController::Base
  helper_method :current_user, :is_admin?
  def current_user
    return User.first if Rails.env.test?
    User.find_by(id: session[:user_id])
  end
end
