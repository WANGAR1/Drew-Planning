class ApplicationController < ActionController::API
  include ActionController::Cookies

  protect_from_forgery with: :null_session

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  private

  def authenticate_user
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      store_session(user.id) # Store only the user ID in the session
      return true
    end

    false
  end

  before_action :authenticate_user
end
