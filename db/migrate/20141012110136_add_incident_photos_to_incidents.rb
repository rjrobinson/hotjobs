class AddIncidentPhotosToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :incident_photos, :string
  end
end
