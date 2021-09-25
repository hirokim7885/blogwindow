class Blogs::ReviewController < ApplicationController

  def new
    @blog = Blog.find(params[:content_id])
    @review = @blog.reviews.build
    @user = User.find(@blog.user_id)
  end

  def create
    @blog = Blog.find(params[:content_id])
    @review = @blog.reviews.build(review_params)
    if @review.save!
      redirect_to blogs_content_path(@blog)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:name, :comment)
  end


end
