class Blogs::AdminArticleController < Admin::BaseController

  def show
    @blog = Blog.find(params[:id])
  end

end
