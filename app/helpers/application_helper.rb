module ApplicationHelper
  def address_helper
    (0..20).map { |num| [num, num] }
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
