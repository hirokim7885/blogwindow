class Blogs::AdminWindowController < Admin::BaseController

  def index
    @users = User.page(params[:page]).order(created_at: :desc)
    @blogs = Blog.page(params[:page]).order(created_at: :desc)
  end

end
