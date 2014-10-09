class CreateUpdatesTable < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string  :body,        null: false
      t.integer :incident_id, null: false
      t.integer :user_id,     null: false

      t.timestamps

    end
  end
end
