class WelcomeController < ApplicationController

  def create
    @start_location = Location.create(:address => params[:start_address])
    @end_location = Location.create(:address => params[:end_address])
    redirect_to stations_path
  end



  # private
  #
  # def location_params
  #   params.slice(:start_address, :map_address, :end_address)
  # end
end
