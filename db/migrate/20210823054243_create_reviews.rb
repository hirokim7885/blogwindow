class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :blog
      
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
