class AddBusIdToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bus_id, :integer
  end
end
