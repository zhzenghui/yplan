class CreateUsermeta < ActiveRecord::Migration
  def change
    create_table :usermeta do |t|
      t.integer :umeta_id
      t.integer :user_id
      t.string :meta_key
      t.text :meta_value

      t.timestamps
    end
  end
end
