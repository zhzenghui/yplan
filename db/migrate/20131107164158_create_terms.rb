class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :term_id
      t.string :name
      t.string :slug
      t.integer :term_group

      t.timestamps
    end
  end
end
