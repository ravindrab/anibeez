class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :post
      t.references :Activity
      t.references :user

      t.timestamps
    end
    add_index :comments, :Activity_id
    add_index :comments, :user_id
  end
end
