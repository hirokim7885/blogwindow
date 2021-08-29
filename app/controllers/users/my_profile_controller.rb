class Users::MyProfileController < AuthController

def show
  @user = current_user
end

def edit
  @user = current_user
end

def updated
  if @user.update(user_params)
    redirect_to user_my_profile_path(@user)
  else
    render :edit, status: :unprocessable_entity
  end
end

private
def user_params
  params.require(:user).permit(:portrait, :family_name, :given_name, :family_name_kana, :given_name_kana, :career)
end

end
