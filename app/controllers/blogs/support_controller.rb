class Blogs::SupportController < AuthAdminController

  def index
    @blog = Blog.find(params[:admin_article_id])
    @reviews = @blog.reviews.page(params[:page]).order(created_at: :desc)
  end

  def destroy
    @blog = Blog.find(params[:admin_article_id])
    @review = @blog.reviews.find(params[:admin_article_id])
    @review.destroy
    redirect_to blogs_admin_article_path(@blog), notice: 'レビューを削除しました。'
  end

end
