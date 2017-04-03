class ItinerariesController < ApplicationController
	def add_place
		@place = Place.find(params[:id])
		@itenerary = @place.itineraries.create(user_id: current_user.id)

		redirect_to :back
	end

	def index
		@itinerary_places = current_user.places
	end

	def show
		@itinerary_places = current_user.places
	end

	def new
		@itinerary_new = Itinerary.new
	end
	
	def create
		itinerary = Itinerary.new(itinerary_params)
		itinerary.user_id = current_user.id
		itinerary.save
	end

	private

	def itinerary_params
		params.require(:itinerary).permit(:title, :user_id, :place_id)
	end

end