class Blogs::AdminWindowController < Admin::BaseController

  def index
    @users = User.all.order(id: :asc)
  end

end
