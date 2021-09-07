class Blogs::AdminArticleController < AuthAdminController

  def show
    @blog = Blog.find(params[:id])
  end

end
