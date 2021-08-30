class Blogs::WindowController < ApplicationController

  def index
    @users = User.all.order(id: :asc)
    @blogs = Blog.all.order(created_at: :desc)
  end

end
