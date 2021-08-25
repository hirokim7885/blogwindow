class Blogs::MyContentController < AuthController

  def index
    @user = current_user
    @blogs = current_user.blogs.all.order(updated_at: :desc)
  end

end
