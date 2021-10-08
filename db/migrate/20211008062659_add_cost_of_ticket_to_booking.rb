class AddCostOfTicketToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :cost_of_ticket, :integer
  end
end
