class Review < ApplicationRecord

  validates :name, presence: true
  validates :comment, presence: true, length: { maximum: 50 }

  belongs_to :blog, counter_cache: :good_count

end
