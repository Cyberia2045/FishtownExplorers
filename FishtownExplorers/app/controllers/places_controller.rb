class PlacesController < ApplicationController
	def pizza
		@place = Place.new
		@place.category = "pizza"

		@places = Place.where(category: "pizza")
	end
	
	def create
		place = Place.create(place_params)
		redirect_to :back
	end

  def place_params
		params.require(:place).permit(:category, :name, :latitude, :longitude, :avatar, :description)
  end

end