class AddVerionToStatements < ActiveRecord::Migration[5.0]
  def change
    add_column :statements, :statement_version, :string
  end
end
