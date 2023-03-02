class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates_presence_of :user
  validates_presence_of :car
  validates :user_id, uniqueness: {
    scope:[:car_id] }
end
