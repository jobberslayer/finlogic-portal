class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.integer :user_id
      t.string :role
      t.string :fname
      t.string :lname
      t.integer :location_id

      t.timestamps
    end
  end
end
