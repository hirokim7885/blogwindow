class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.belongs_to :user
      t.belongs_to :review

      t.string :title
      t.integer :good_counts

      t.timestamps
    end
  end
end
