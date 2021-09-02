class Blog < ApplicationRecord

  validates :title, presence: true, length: { maximum: 50 }

  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_many_attached :images
  has_rich_text :content

  def privious
    user.blogs.order(created_at: :desc, id: :desc).where('created_at <= ? and id < ?', created_at, id).first
  end

  def next
    user.blogs.order(created_at: :desc, id: :desc).where('created_at >= ? and id > ?' ,created_at, id).reverse.first
  end

end
