class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user! #dynamically generated method (that's why not found by IDE)


  def current_user
    p session
    @current_user ||= User.find(session["warden.user.user.key"][0][0]) if session["warden.user.user.key"][0][0]
  end
  helper_method :current_user

  def current_user_role
    current_user[:role]
  end
  helper_method :current_user_role

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
