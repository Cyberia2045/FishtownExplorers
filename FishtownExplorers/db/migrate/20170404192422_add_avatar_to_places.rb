class AddAvatarToPlaces < ActiveRecord::Migration[5.0]
  def self.up
  	change_table :places do |t|
  		t.attachment :avatar
  end
end
  def self.down
  	remove_attachment :places, :avatar
  end
end
