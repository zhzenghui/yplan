class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.integer :post_author
      t.datetime :post_date
      t.datetime :post_date_gmt
      t.text :post_content
      t.text :post_title
      t.text :post_excerpt
      t.string :post_status
      t.string :comment_status
      t.string :ping_status
      t.string :post_password
      t.string :post_name
      t.text :to_ping
      t.text :pinged
      t.datetime :post_modified
      t.datetime :post_modified_gmt
      t.text :post_content_filtered
      t.integer :post_parent
      t.string :guid
      t.integer :menu_order
      t.string :post_type
      t.string :post_mime_type
      t.integer :comment_count

      t.timestamps
    end
  end
end
