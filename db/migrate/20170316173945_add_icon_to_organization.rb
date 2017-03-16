class AddIconToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :icon, :string
  end
end
