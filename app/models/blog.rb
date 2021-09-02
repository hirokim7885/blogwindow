class Blog < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50 }

  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_many_attached :images
  has_rich_text :content

end
