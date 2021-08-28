class Users::AdminController < AuthController

  def new
    @user = current_user.new
  end

  def create
    if @user.save(user_params)
      redirect_to users_admin_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :family_name, :given_name, :family_name_kana, :given_name_kana, :zipcode, :address, :telephone, :suspended, :portrait )
  end

end
