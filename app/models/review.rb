class Review < ApplicationRecord

  validates :name, presence: true
  validates :comment, presence: true, length: { maximum: 50, message: "メッセージが50字を超えています。" }

  belongs_to :blog, counter_cache: :good_count

end
