class Blogs::ContentController < ApplicationController

  def show
    @blog = Blog.find(params[:id])
    @user = User.find(@blog.user_id)
  end

end
