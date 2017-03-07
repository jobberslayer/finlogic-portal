class AddColToAoiiIncomeStatement < ActiveRecord::Migration[5.0]
  def change
    add_column :aoii_income_statements, :g_l_on_disposal_of_asset, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :g_l_on_fair_value_int_swap, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :gain_on_sale_of_property, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :uncategorized_income, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :cost_of_goods_sold, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :bad_debt_exp_do_not_use_, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :bank_fees, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :li_convention_exp_do_not_use, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :payroll_expenses_inactive, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :reconciliation_discrepancies, :decimal, :precision => 8, :scale => 2
    add_column :aoii_income_statements, :z_contra_account, :decimal, :precision => 8, :scale => 2
  end
end
