class AddToToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :to, :string
  end
end
