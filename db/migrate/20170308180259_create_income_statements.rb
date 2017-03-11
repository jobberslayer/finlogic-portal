class CreateIncomeStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.string :title1
      t.string :title2
      t.string :time_period
      t.integer :location_id
      t.string :statement_type
      t.text :statement_data
      t.timestamps
    end
  end
end
