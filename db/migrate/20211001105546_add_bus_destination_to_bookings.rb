class AddBusDestinationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bus_destination, :string
  end
end
