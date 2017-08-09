class RemoveColumLocationIdFromInformation < ActiveRecord::Migration[5.0]
  def change
    remove_column :information, :location_id
  end
end
