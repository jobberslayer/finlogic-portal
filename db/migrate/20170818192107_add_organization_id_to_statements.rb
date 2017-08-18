class AddOrganizationIdToStatements < ActiveRecord::Migration[5.0]
  def change
    add_column :statements, :organization_id, :integer
  end
end
