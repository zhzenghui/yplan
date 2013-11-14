class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, :user_email, unique: true
    add_index :users, :user_login, unique: true
    
  end
end
