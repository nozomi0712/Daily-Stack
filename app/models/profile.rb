class Profile < ApplicationRecord
  validates :prefecture,  length: { in: 0..5 }
  validates :grade,       length: { in: 0..5 }
  validates :li_subject,  length: { in: 0..13 }
  validates :li_book,     length: { in: 0..13 }
  validates :li_anime,    length: { in: 0..13 }
  validates :li_youtuber, length: { in: 0..13 }
  validates :li_food,     length: { in: 0..13 }
  validates :lessons,     length: { in: 0..13 }
  validates :dream,       length: { in: 0..13 }
  validates :custom,      length: { in: 0..13 }
  validates :comment,     length: { in: 0..150 }

  belongs_to :user

  mount_uploader :image, ImagesUploader
end
