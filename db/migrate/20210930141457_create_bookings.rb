class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
    t.string "bus_name"
    t.string "bus_no"
    t.time "time"
    t.string "bus_destination"
    t.integer "user_id"
    t.string "seat_type"
    t.integer "total_seat"
      
      t.timestamps null: false
    end
  end
end
