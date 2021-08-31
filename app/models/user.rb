class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :career, presence: true
  # validates :zipcode, presence: true
  # validates :address, presence: true
  # validates :telephone, presence: true

  enum admin: { public_user: 0, administrator: 1}
  enum suspended: { under_use: 0, under_suspension: 1 }

  has_many :blogs, dependent: :destroy
  has_many :reviews, through: :blogs, dependent: :destroy
  has_one_attached :portrait

end
