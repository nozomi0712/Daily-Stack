class Comment < ApplicationRecord
  validates :comments, presence: true, length: { in: 1..90 }
  validates :user_id,  presence: true
  validates :post_id,  presence: true

  belongs_to :user
  belongs_to :post
end
