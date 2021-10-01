class AddSeatTypeToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :seat_type, :string
  end
end
