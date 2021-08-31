class AuthController < ApplicationController

  before_action :authenticate_user!
  before_action :suspended_user
  before_action :administrate_user


  private
  def suspended_user
    if current_user.suspended == "under_suspension"
      redirect_to new_user_session_path
    end
  end

  private
  def administrate_user
    if current_user.admin == "administrator"
      redirect_to blogs_admin_content_index_path
    end
  end
  
end