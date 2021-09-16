class AddBlogCaptionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :blog_caption, :string
  end
end
