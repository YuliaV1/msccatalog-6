# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Define the current_user method to retrieve the currently logged-in user
  def current_user
    # Implement your logic to retrieve the logged-in user from the session or database
    # For example, if you are using Devise gem for authentication:
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  helper_method :current_user # Make current_user available in views

  # Other common methods or configurations for your application
end
