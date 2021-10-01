class AddTotalSeatToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :total_seat, :integer
  end
end
