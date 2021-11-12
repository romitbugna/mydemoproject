class AddFromToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :from, :string
  end
end
