class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :admin)
  end
end
