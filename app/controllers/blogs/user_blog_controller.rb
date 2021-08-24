class Blogs::UserBlogController < ApplicationController

  def index
    @user = current_user
    @blogs = Blog.all.order(updated_at: :desc)
  end

end
