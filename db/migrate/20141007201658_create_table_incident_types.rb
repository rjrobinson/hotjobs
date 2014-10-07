class CreateTableIncidentTypes < ActiveRecord::Migration
  def change
    create_table :incident_types do |t|

      t.string :type, null: false

    end
  end
end
