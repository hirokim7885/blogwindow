class AuthAdminController < AuthController

  before_action :administrate_user

  private
  def administrate_user
    unless current_user.admin == "administrator"
      redirect_to blogs_my_content_index_path
    end
  end

end
