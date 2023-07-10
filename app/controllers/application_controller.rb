class ApplicationController < ActionController::API
  include ActionController::Cookies

  protect_from_forgery with: :null_session

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  before_action :authenticate_user

  private

  def authenticate_user(email, password)
    user = User.find_by(email: email)
  
    if user && user.authenticate(password)
      store_session(user.id) # Store only the user ID in the session
      return true
    end
  
    false
  end  

end
