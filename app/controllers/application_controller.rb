class ApplicationController < ActionController::Base
  #before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

=begin
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :p_name, :institution_id, :password, :password_confirmation, :current_password])
  end
=end
end

