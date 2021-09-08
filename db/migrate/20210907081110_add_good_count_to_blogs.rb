class AddGoodCountToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :good_count, :integer, :null =>false, :default => 0
  end
end
