class Review < ApplicationRecord

  validates :name, presence: true, length: { minimum: 3 }
  validates :comment, presence: true, length: { maximum: 50 }

  has_many :blogs, dependent: :destroy

end
