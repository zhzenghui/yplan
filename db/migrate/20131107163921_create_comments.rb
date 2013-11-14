class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :comment_ID
      t.integer :comment_post_ID
      t.text :comment_author
      t.string :comment_author_email
      t.string :comment_author_url
      t.string :comment_author_IP
      t.datetime :comment_date
      t.datetime :comment_date_gmt
      t.text :comment_content
      t.integer :comment_karma
      t.string :comment_approved
      t.string :comment_agent
      t.string :comment_type
      t.integer :comment_parent
      t.integer :user_id

      t.timestamps
    end
  end
end
