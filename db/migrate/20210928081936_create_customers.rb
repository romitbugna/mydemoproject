class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :provider
      t.string :custid
      t.string :name
      t.string :email
      t.string :oauth_token
      t.datetime :oauth_expires_at


      t.timestamps null: false
    end
  end
end
