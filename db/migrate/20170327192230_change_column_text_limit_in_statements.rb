class ChangeColumnTextLimitInStatements < ActiveRecord::Migration[5.0]
  def change
    change_column :statements, :statement_data, :text, limit: 4294967295
  end
end
