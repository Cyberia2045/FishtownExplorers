class VisitsController < ApplicationController
  def create
  	@visits = Visit.new(visit_params)

  	@visits.save!

  	redirect_to :back
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy

    redirect_to :back
  end

  def visit_params
  	params.require(:visit).permit(:itinerary_id, :place_id)
  end
end
