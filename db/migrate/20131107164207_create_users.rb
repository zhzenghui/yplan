class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_login
      t.string :user_pass
      t.string :user_nicename
      t.string :user_email
      t.string :user_url
      t.datetime :user_registered
      t.string :user_activation_key
      t.integer :user_status
      t.string :display_name

      t.timestamps
    end
  end
end
