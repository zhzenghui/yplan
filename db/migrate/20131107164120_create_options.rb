class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :option_id
      t.integer :blog_id
      t.string :option_name
      t.text :option_value
      t.string :autoload

      t.timestamps
    end
  end
end
