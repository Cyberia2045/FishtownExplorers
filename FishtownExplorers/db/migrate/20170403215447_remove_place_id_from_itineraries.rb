class RemovePlaceIdFromItineraries < ActiveRecord::Migration[5.0]
  def change
  	remove_column :itineraries, :place_id, :integer
  end
end
