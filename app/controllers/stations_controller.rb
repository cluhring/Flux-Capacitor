class StationsController < ApplicationController
  def show
    @station = Station.find(params[:id])
  end

  def index
    @stations = Station.all
    @alt_fuels = AltFuel.all
    @closest_stations= Station.find_closest(e.latlng.lat, e.latlng.lng)
    @start_location
    @end_location
  end
end

#
# L.latLng(<%= @start_location.latitude %>, <%= @start_location.longitude %>),
# L.latLng(<%= @end_location.latitude %>, <%= @end_location.longitude %>),
