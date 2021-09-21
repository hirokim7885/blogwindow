class Users::AdminMyProfileController < Admin::BaseController

  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_admin_my_profile_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:portrait, :family_name, :given_name, :family_name_kana, :given_name_kana, :career, :life_history)
  end  

end
