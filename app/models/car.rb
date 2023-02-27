class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :model, presence: true
  validates :colour, presence: true
  validates :fuel_type, presence: true
  validates :number_of_seats, presence: true
end
