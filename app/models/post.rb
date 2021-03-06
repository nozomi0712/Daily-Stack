class Post < ApplicationRecord
  validates :title,   presence: true, length: { in: 1..30 }
  validates :textn,   presence: true, length: { in: 1..200 }
  validates :grade,   presence: true
  validates :subject, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :comments,  dependent: :destroy
  has_many :likes,     dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :images,    dependent: :destroy

  accepts_nested_attributes_for :images, allow_destroy: true

  def self.set_follow_users(current_user)
    follows_all = current_user.followings
    follows_id = []
    follows_all.each do |follow|
      follows_id << follow.id
    end
    return Post.where(user_id: follows_id)
  end

  def self.search(search)
    return self.all unless search
    self.where('title LIKE(?)', "%#{search}%")
  end

end
