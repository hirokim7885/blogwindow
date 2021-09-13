# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  
  # def create
  #   @user = User.find_by(params[:email])
    
  #   respond_to do |format|
  #     if @user.email?
  #       @user.create_reset_password_token
  #       PasswordResetMailer.with(to: @user.email, family_name: @user.family_name).reset_password_instructions.deliver_now
  #       format.html { redirect_to @user,notice: "パスワード再設定のURLを送信致しました。" }
  #       format.json { render json: @user, status: :created, location: @user }
  #     else
  #       format.html { render action: :new }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

end
