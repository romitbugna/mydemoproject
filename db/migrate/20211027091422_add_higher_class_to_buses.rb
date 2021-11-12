class AddHigherClassToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :higher_class, :integer
  end
end
