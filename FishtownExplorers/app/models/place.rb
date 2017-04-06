class Place < ApplicationRecord
	has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
		
	 	has_many :itineraries
		has_many :visits
		has_many :itineraries, through: :visits
end
