class AddTimeToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :time, :time
  end
end
