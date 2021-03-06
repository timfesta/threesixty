class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

  def logged_in?
    @current_user != nil
  end

  helper_method :current_user, :logged_in?

  def authorize
    unless current_user
      redirect_to login_path
    end
  end

end
