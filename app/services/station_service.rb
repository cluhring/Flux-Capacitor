class StationService
  attr_reader :connection

  def initialize
    # @connection = Faraday.new(url: "http://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=NrcHZRCeouPvntxWjoqLW5IppXF4LwiDQLySiVMD&status=E&access=public&limit=200")
    @connection = Faraday.new(url: "http://developer.nrel.gov/api/alt-fuel-stations/v1")
  end
  # /api/alt-fuel-stations/v1/39534.json?api_key=DEMO_KEY

  def stations
    parse(connection.get do |req|
      req.params['api_key'] = ENV['nrel_secret']
      req.params['format'] = 'json'
      req.params['status'] = 'E'
      req.params['access'] = 'public'
      req.params['limit'] = 200
      # req.params['state'] = 'CO'
    end)
  end

  def station(id)
    parse(connection.get("/api/alt-fuel-stations/v1/#{id}") do |req|
      req.params['api_key'] = ENV['nrel_secret']
      req.params['format'] = 'json'
    end)
  end

  def closest_stations(lat, long)
    parse(connection.get("/nearest") do |req|
      req.params['api_key'] = ENV['nrel_secret']
      req.params['format'] = 'json'
      req.params['status'] = 'E'
      req.params['access'] = 'public'
      req.params['latitude'] = lat
      req.params['longitude'] = lng
      req.params['radius'] = 10
      req.params['limit']= 5
    end)
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
# lat: e.latlng.lat, lng: e.latlng.lng
