class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # session[:user_id] = nil used to reset the user if database drops while user signed in
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # Basically, if session[:user_id] is set, find the User with that id. The @current_user ||= part of the method will cache the current user inside of the @current_user instance variable so we don't have to make a database call each time the method is called.
  end


  helper_method :current_user

  before_filter :require_login

  private
    def require_login
      unless current_user
        redirect_to log_in_path
      end
    end

end
