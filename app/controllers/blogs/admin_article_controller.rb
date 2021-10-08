class Blogs::AdminArticleController < Admin::BaseController
  def show
    @blog = Blog.find(params[:id])
    @user = User.find(@blog.user_id)
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to users_admin_top_path(@blog.user_id), notice: '記事を削除しました。'
  end

end
