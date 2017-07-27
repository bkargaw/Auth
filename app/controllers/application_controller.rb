class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def log_in(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

  def log_out
    @current_user.try(:reset_session_token!)
    session[:session_token] = nil
    @current_user = nil
  end

  def ensure_login
    redirect_to new_session_url unless current_user
  end
end
