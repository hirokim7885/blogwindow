class Users::ProfileController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

end
