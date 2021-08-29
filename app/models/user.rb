class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :career, presence: true
  # validates :zipcode, presence: true
  # validates :address, presence: true
  # validates :telephone, presence: true

  enum admin: { is_not: 0, is: 1}
  enum suspended: { not_sus: 0, sus: 1 }

  has_many :blogs, dependent: :destroy
  has_many :reviews, through: :blogs, dependent: :destroy
  has_one_attached :portrait

end
