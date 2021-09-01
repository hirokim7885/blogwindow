class AuthSuspendedController < AuthController

  before_action :suspended_user

  private
  def suspended_user
    unless current_user.suspended == "under_use"
      session.delete(:user_id)
      flash.alert = "あなたのアカウントは現在停止中です。"
      # redirect_to new_user_session_path
    end
  end

end