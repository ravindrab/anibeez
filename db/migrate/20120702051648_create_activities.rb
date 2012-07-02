class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :query
      t.references :user

      t.timestamps
    end
    add_index :activities, :user_id
  end
end
