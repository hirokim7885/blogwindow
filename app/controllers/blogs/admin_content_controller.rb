class Blogs::AdminContentController < AuthAdminController

  def index
    @user = current_user
    @blogs = @user.blogs.all.order(updated_at: :desc)
  end

end
