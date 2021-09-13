class AuthController < ApplicationController

  before_action :authenticate_user!
  before_action :force_logout, if: -> { current_user.under_suspension? }
  before_action :administrate_user

  private
    def force_logout
      sign_out current_user
      flash[:error] = "現在、お客様の当サイトのご利用を停止させて頂いております。ご不明な点等ありましたら、管理者にお問い合わせ下さい。"
      redirect_to new_user_session_path
    end

    def administrate_user
      if current_user.administrator?
        redirect_to blogs_admin_content_index_path
      end
    end

end
