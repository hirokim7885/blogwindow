class Blogs::WindowController < ApplicationController

def index
  @blogs = Blog.all.order(id: :asc)
end

end
