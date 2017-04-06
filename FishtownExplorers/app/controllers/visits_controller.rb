class VisitsController < ApplicationController
  def create
  	@visits = Visit.new(visit_params)

  	@visits.save!

  	redirect_to :back
  end

  def destroy
  end

  def visit_params
  	params.require(:visit).permit(:itinerary_id, :place_id)
  end
end
