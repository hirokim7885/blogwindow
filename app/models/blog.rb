class Blog < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50 }

  belongs_to :user
  belongs_to :review
  has_many_attached :images

end
