class ItinerariesController < ApplicationController

	def index
		@itinerary = current_user.itineraries
	end

	def show
		@itinerary = Itinerary.find(params[:id])
	end

	def new
		@itinerary_new = Itinerary.new
	end
	
	def create
		@itinerary_new = Itinerary.new(itinerary_params)
		
		@itinerary_new.save

		redirect_to itineraries_path
	end

	def destroy
		@itinerary = Itinerary.find(params[:id])
		@itinerary.destroy

		redirect_to :back
	end

	private

	def itinerary_params
		params.require(:itinerary).permit(:title, :user_id)
	end

end