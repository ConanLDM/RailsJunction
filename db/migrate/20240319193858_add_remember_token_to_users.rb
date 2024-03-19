class AddRememberTokenToUsers < ActiveRecord::Migration[7.1]
  disable_ddl_transaction!
  
  def change
    add_column :users, :remember_token, :string, null: false
    add_index :users, :remember_token, unique: true, algorithm: :concurrently
  end
end
