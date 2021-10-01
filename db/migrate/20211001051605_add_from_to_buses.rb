class AddFromToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :from, :string
  end
end
