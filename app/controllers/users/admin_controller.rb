class Users::AdminController < Admin::BaseController

  def index
    @users = User.all.order(id: :asc) 
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
      respond_to do |format|
        if @user.save
          UserMailer.with(to: @user.email, family_name: @user.family_name).welcome.deliver_now
          format.html { redirect_to @user,notice: "ユーザーの登録が完了致しました。" }
          format.json { render json: @user, status: :created, location: @user }
        else
          format.html { render action: :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end

  end

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

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_admin_index_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :family_name, :given_name, :family_name_kana, :given_name_kana, :zipcode, :address, :telephone, :admin, :suspended)
  end

end
