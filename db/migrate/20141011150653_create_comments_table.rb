class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :comment_body,  null: false
      t.integer :incident_id,   null: false
      t.integer :user_id,       null: false

      t.timestamps
    end
  end
end
