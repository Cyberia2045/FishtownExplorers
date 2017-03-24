require "geocoder"

class GeoController < ApplicationController
  def locate
  	@location = Geocoder.coordinates(params[:location])

  	render "locate.js.erb"
  end
end
