class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :bus_name
      t.integer :bus_no
      t.string :seat_type 
      t.string :from
      t.string :to
      t.date :date
      t.time :time


      t.timestamps null: false
    end
  end
end
