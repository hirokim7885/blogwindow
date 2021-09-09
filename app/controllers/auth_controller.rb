class AuthController < ApplicationController

  before_action :authenticate_user!
  before_action :force_logout, if: -> { current_user.under_suspension? }
  before_action :administrate_user

  private
    def force_logout
      sign_out_and_redirect(current_user)
    end

    def administrate_user
      if current_user.administrator?
        redirect_to blogs_admin_content_index_path
      end
    end

end
