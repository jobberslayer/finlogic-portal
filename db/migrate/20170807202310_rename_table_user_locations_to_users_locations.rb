class RenameTableUserLocationsToUsersLocations < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_locations, :users_locations
  end
end
