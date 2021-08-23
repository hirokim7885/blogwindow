class Blog < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50 }

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews, dependent: :destroy

end
