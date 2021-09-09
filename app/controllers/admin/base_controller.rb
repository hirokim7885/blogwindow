class Admin::BaseController < ApplicationController
  class Forbidden < ActionController::ActionControllerError; end

  before_action :authenticate_user!
  before_action :force_logout, if: -> { current_user.under_suspension? }
  before_action :check_unauthorized_access

  private
    def force_logout
      sign_out_and_redirect(current_user)
    end

    def check_unauthorized_access
      raise Forbidden unless current_user.administrator? 
    end

end
