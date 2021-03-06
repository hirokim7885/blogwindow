class Blog < ApplicationRecord

  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_one_attached :caption_image
  has_many_attached :images
  has_rich_text :content

  def previous
    user.blogs.order(created_at: :desc, id: :desc).where('created_at <= ? and id < ?', created_at, id).first
  end
  
  def next
    user.blogs.order(created_at: :desc, id: :desc).where('created_at >= ? and id > ?' ,created_at, id).reverse.first
  end

end
