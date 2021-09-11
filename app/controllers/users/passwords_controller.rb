# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  
  def create
    @user = User.find_by(create_params[:email])
    @user.send_reset_password_instructions
    render json: {}
  end

  private
  def create_params
    params.require(:user).permit(:email)
  end

end
