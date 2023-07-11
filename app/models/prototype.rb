class Prototype < ApplicationRecord
  validates :name, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
   has_one_attached :image
   belongs_to :user

end
