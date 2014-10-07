class CreateTableIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.association   :incident_type_id,      null: false
      t.integer       :user_id,               null: false
      t.string        :latitude,              null: false
      t.string        :longitude,             null: false
      t.string        :name,                  null: false
      t.text          :description,           null: false

      t.timestamps
    end
  end
end
