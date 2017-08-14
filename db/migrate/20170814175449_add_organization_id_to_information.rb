class AddOrganizationIdToInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :information, :organization_id, :integer
  end
end
