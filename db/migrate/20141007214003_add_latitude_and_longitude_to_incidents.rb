class AddLatitudeAndLongitudeToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :latitude, :float, null: false
    add_column :incidents, :longitude, :float, null: false
  end
end
