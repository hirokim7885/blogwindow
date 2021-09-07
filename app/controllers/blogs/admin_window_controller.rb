class Blogs::AdminWindowController < AuthAdminController

  def index
    @users = User.all.order(id: :asc)
  end

end
