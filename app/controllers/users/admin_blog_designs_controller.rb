class Users::AdminBlogDesignsController < Admin::BaseController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_admin_blog_design_path(@user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:background, :blog_name)
  end

end
