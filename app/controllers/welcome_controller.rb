class WelcomeController < ApplicationController
  def index
    @stations = Station.all
    @alt_fuels = AltFuel.all
  end
end
