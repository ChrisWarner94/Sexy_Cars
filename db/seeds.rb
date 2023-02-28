require 'faker'


user = User.new(
  first_name: "Chris",
  last_name: "Warner",
  email: "c.warner15@gmail.com",
  password: "password123"
)
user.save!

100.times do
  vehicle = Car.new(
    number_of_seats: ["2", "5", "7"].sample,
    model: Faker::Vehicle.make_and_model,
    fuel_type: Faker::Vehicle.fuel_type,
    colour: Faker::Vehicle.color,
    user_id: user.id
  )
  vehicle.save!

end
