class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.integer :itinerary_id
      t.integer :place_id

      t.timestamps
    end
  end
end
