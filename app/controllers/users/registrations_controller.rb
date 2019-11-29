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

def create
  @user = User.new(user_params)
  respond_to do |format|
    if @user.save

      # Deliver the signup email
      UserNotifier.send_signup_email(@user).deliver

      format.html { redirect_to @user, notice: 'User was successfully created.' }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
