class Blogs::AdminContentController < Admin::BaseController

  def index
    @user = current_user
    @blogs = @user.blogs.all.order(created_at: :desc)
  end

end
