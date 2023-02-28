class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :number_of_seats
      t.string :model
      t.string :fuel_type
      t.string :colour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
