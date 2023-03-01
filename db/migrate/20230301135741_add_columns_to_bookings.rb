class AddColumnsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :pickup_date, :date
    add_column :bookings, :return_date, :date
  end
end

class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end
