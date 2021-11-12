class AddMiddleClassToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :middle_class, :integer
  end
end
