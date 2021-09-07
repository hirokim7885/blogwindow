class Admin::BaseController < ApplicationController
  class Forbidden < ActionController::ActionControllerError; end

  before_action :authenticate_user!
  before_action :check_unauthorized_access

  private
    def check_unauthorized_access
      raise Forbidden unless current_user.administrator? 
    end

end
