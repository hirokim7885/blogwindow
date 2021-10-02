class Blogs::MessageController < AuthController

  def index
    @user = current_user
    @blog = Blog.find(params[:my_content_id])
    @reviews = @blog.reviews.page(params[:page]).order(created_at: :desc)
  end

end
