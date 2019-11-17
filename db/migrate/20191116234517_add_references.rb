class AddReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :organizer, foreign_key: true
    add_column :events, :distributor_id, :integer
    add_reference :foods, :event, foreign_key: true
    add_reference :organizers, :location, foreign_key: true
    add_reference :events, :location, foreign_key: true
  end
end
