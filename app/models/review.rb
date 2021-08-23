class Review < ApplicationRecord

  validates :name, presence: true, length: { minimum: 3 }
  validates :comment, presence: true, length: { maximum: 50 }

  belongs_to :user
  belongs_to :blog

end
