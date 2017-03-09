class AddColumnStatementTypeToStatements < ActiveRecord::Migration[5.0]
  def change
    add_column :statements, :statement_type, :string
  end
end
