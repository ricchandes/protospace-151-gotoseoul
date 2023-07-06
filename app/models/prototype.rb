class Prototype < ApplicationRecord
  validates :name, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

end
