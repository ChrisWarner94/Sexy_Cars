class AddReturnDateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :return_date, :date
  end
end
