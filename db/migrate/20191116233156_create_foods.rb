class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.decimal :estimated_qty

      t.timestamps
    end
  end
end
