class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.text :description
      t.references :bookmark

      t.timestamps
    end
    add_index :links, :bookmark_id
  end
end
