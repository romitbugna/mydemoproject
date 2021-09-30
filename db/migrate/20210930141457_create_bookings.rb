class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :no_of_seats_booked
      t.string :seat_type
      t.string :cost_of_ticket

      t.timestamps null: false
    end
  end
end
