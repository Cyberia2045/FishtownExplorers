class RemoveUserIdFromPlaces < ActiveRecord::Migration[5.0]
  def change
  	remove_column :places, :user_id
  end
end
