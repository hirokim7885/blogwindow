class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, confirmation: true
  validates :password, confirmation: true
  # validates :career, presence: true
  # validates :zipcode, presence: true
  # validates :address, presence: true
  # validates :telephone, presence: true
  validates :blog_name, length: { maximum: 20 }
  validates :blog_caption, length: { maximum: 40}

  enum admin: { user: 0, administrator: 1}
  enum suspended: { under_use: 0, under_suspension: 1 }

  has_many :blogs, dependent: :destroy
  has_one_attached :portrait
  has_one_attached :background
  has_one_attached :title_image
  has_rich_text :life_history
  has_rich_text :self_introduction

  # def User.new_token
  #   SecureRandom.urlsafe_base64
  # end

  # def create_reset_password_token
  #   self.reset_password_token = User.new_token
  #   update_attribute(:reset_password_token, User.digest(reset_password_token))
  #   update_attribute(:reset_password_sent_at, Time.zone.now)
  # end  

end
