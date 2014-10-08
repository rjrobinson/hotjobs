class RemoveColumnFromIncidents < ActiveRecord::Migration
  def up
    remove_column :incidents, :name
  end

  def down
    add_column :incidents, :name, :string
  end
end
