require 'faker'

100.times do
  vehicles = Car.new(
    number_of_seats: ["2", "5", "7"].sample,
    model: Faker::Vehicle.make_and_model,
    fuel_type: Faker::Vehicle.fuel_type,
    colour: Faker::Vehicle.color
  )
  vehicles.save!
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
