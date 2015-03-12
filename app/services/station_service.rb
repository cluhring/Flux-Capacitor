class StationService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=NrcHZRCeouPvntxWjoqLW5IppXF4LwiDQLySiVMD&status=E&access=public&limit=100")
  end

  def stations
    parse(connection.get)
  end

  # def station
  #   parse(connection.get)
  # end

  # def stations
  #   parse(connection.get do |req|
  #     req.params["fuel_stations"]
  #   end)
  # end
  #
  # def station(id)
  #   parse(connection.get do |req|
  #     req.params(["fuel_stations"][id])
  #   end)
  # end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
