class AddAvailableSeatToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :available_seat, :integer
  end
end
