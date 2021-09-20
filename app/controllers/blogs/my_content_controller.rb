class Blogs::MyContentController < AuthController

  def index
    @user = current_user
    @blogs = @user.blogs.page(params[:page]).order(created_at: :desc)
  end

  def show
    @user = current_user
    @blog = @user.blogs.find(params[:id])
  end

  def new
    @user = current_user
    @blog = @user.blogs.build
  end
    
  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to blogs_my_content_path(@blog)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @blog = @user.blogs.find(params[:id])
  end

  def update
    @blog = current_user.blogs.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_my_content_path(@blog)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = current_user.blogs.find(params[:id])
    @blog.destroy
    redirect_to root_path, notice: '記事を削除しました。'
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :good_counts, :content, :caption_image)
  end

end
