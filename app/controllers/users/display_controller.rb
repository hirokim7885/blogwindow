class Users::DisplayController < ApplicationController

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.order(created_at: :desc).page(params[:page])
  end

end
