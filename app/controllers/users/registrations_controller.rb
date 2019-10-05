# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :exception

  private
  def sign_up_params
    params.require(:user).permit(:cpf, :email, :password, :password_confirmation, :tipoUser)
  end

  def account_update_params
    params.require(:user).permit(:cpf, :email, :password, :password_confirmation, :current_password, :tipoUser)
  end


  
end
