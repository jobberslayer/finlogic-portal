class AddColsToIncomeStatements < ActiveRecord::Migration[5.0]
  def change
    add_column :income_statements, :title1, :string
    add_column :income_statements, :title2, :string
    add_column :income_statements, :time_period, :string
  end
end
