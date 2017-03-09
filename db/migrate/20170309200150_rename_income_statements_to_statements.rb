class RenameIncomeStatementsToStatements < ActiveRecord::Migration[5.0]
  def change
    rename_table :income_statements, :statements
  end
end
