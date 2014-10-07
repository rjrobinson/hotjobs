class CreateTableIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string  :name,              null: false
      t.text    :description
      t.integer :user_id,           null: false
      t.integer :incident_type_id,  null: false
      t.string  :address,           null: false

      t.timestamps
    end
  end
end
