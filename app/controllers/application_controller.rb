class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery 

  add_flash_types :success, :info, :warning, :danger
  
  helper_method :current_user, :logged_in?
  
  
  
  def current_user
    @current_user= User.find_by(id: session[:user_id])
    #binding.pry
  end

  def logged_in?
    !current_user.nil?
  end
end