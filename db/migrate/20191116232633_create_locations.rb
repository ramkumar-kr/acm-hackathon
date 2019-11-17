class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :lat
      t.decimal :lon
      t.text :pincode
      t.text :address

      t.timestamps
    end
  end
end
