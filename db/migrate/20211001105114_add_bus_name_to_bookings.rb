class AddBusNameToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bus_name, :string
  end
end
