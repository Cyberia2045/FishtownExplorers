class RemovePlacesIdFromItineraries < ActiveRecord::Migration[5.0]
  def change
  	remove_column :itineraries, :places_id
  end
end
