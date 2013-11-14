class CreateCommentmeta < ActiveRecord::Migration
  def change
    create_table :commentmeta do |t|
      t.integer :meta_id
      t.integer :comment_id
      t.string :meta_key
      t.text :meta_value

      t.timestamps
    end
  end
end
