class CreateOrganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :organizers do |t|
      t.text :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
