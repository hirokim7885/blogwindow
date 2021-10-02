class Blogs::MessageController < AuthController

  def index
    @blog = Blog.find(params[:my_content_id])
    @reviews = @blog.reviews.page(params[:page]).order(created_at: :desc)
  end

end
