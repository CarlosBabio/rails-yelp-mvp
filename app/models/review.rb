class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :content, length: { minimum: 15 }
end
