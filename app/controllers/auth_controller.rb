class AuthController < ApplicationController

  before_action :authenticate_user!
  # before_action :suspended_user

  # def suspended_user
  #   if current_user.suspended.find(params[:id]) == "sus"
  #     flash.now.alert = "アカウントが停止されています。"
  #     redirect_to new_user_session_path
  #   end
  # end
  
end