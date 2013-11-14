class CreatePostmeta < ActiveRecord::Migration
  def change
    create_table :postmeta do |t|
      t.integer :meta_id
      t.integer :post_id
      t.string :meta_key
      t.text :meta_value

      t.timestamps
    end
  end
end
