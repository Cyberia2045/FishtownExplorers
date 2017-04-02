class AddPlaceIdToItineraries < ActiveRecord::Migration[5.0]
  def change
  	add_column :itineraries, :place_id, :integer
  end
end
