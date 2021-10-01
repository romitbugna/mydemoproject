class AddDateToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :date, :date
  end
end
