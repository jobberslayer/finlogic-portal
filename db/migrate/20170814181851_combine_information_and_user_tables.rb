class CombineInformationAndUserTables < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :role, :string
    add_column :users, :organization_id, :integer
  end
end
