class Blogs::MyContentController < AuthController

  def index
    @user = current_user
    @blogs = current_user.blogs.all.order(updated_at: :desc)
  end

  def new
    @user = current_user
    @blog = current_user.blogs.build
  end
    
  def create
    if @blog.save(blogs_params)
      redirect_to blogs_my_content_path
    else
      render :new
    end
  end

  private
  def blogs_params
    params.require(:blog).permit(:title, good_counts, :images [])
  end

end
