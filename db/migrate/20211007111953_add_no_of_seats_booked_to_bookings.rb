class AddNoOfSeatsBookedToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :no_of_seats_booked, :integer
  end
end
