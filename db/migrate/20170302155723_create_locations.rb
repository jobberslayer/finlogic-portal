class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :organization_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
