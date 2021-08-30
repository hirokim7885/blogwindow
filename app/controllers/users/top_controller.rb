class Users::TopController < ApplicationController

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.all.order(created_at: :desc)
  end

end
