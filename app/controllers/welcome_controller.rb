class WelcomeController < ApplicationController

  def create
    # session[:latitude] = params[:latitude]
    # session[:longitude] = params[:longitude]
  end

  def index
    # @stations = Station.all
    @closest_stations_to_route = Station.find_closest_to_route
    # @alt_fuels = AltFuel.all
    @closest_stations = Station.find_closest(session[:latitude], session[:longitude])
  end

end
