class AuthController < ApplicationController

  before_action :authenticate_user!
  before_action :force_logout, if: -> { current_user.under_suspension? }

  private
    def force_logout
      sign_out_and_redirect(current_user)
    end

end
