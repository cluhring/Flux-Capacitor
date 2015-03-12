class Station < ActiveRecord::Base

  def self.service
    @service ||= StationService.new
  end

  def self.all
    service.stations["fuel_stations"].map do |station|
      _build_object(station)
    end
  end

  def self.find(id)
    _build_object(service.stations["fuel_stations"].detect { |station|
      station["id"] = id})
  end

  def self._build_object(data)
    OpenStruct.new(data)
  end

  def fuel_color_helper
    case station.fuel_type_code
    when "BD"
      "#FFA500" #Orange
      when "CNG"
      "#FFFFFF" #White
      when "E85"
      "#000000" #Black
      when "ELEC"
      "#0000FF" #Blue
      when "HY"
      "#FFFF00" #Yellow
      when "LNG"
      "#008000" #Green
      else "LPG"
      "#FF0000" #Red
    end
  end

end
