class AddTotalSeatToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :total_seat, :integer
  end
end
