class UsersController < AuthController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:family_name, :given_name, :family_name_kana, :given_name_kana, :email, :password, :zipcode, :address, :telephone)
  end

end
