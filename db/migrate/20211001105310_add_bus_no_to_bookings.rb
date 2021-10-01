class AddBusNoToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bus_no, :string
  end
end
