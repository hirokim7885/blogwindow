class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :career, presence: true
  # validates :zipcode, presence: true
  # validates :address, presence: true
  # validates :telephone, presence: true

  enum suspended: { false: 0, true: 1 }

  has_many :blogs, dependent: :destroy
  has_many :reviews, through: :blogs, dependent: :destroy

end
