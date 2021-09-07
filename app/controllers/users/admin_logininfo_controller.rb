class Users::AdminLogininfoController < Admin::BaseController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_admin_path(@user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
