class AddLowerClassToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :lower_class, :integer
  end
end
