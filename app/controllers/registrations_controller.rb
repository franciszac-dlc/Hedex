class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:principal).permit(:email, :p_name, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:principal).permit(:email, :p_name, :password, :password_confirmation, :current_password)
  end
end
