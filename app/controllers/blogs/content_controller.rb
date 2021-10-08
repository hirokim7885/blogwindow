class Blogs::ContentController < ApplicationController

  def show
    @blog = Blog.find(params[:id])
    @user = User.find(@blog.user_id)
    @reviews = @blog.reviews.page(params[:page]).order(created_at: :desc)
  end

end
