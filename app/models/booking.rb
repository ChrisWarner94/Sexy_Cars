class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates_presence_of :user
  validates_presence_of :car
end
