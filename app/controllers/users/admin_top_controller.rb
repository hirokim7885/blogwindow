class Users::AdminTopController < AuthAdminController

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.page(params[:page]).order(created_at: :desc)
  end

end
