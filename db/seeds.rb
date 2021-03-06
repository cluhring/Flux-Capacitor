class Seed
  def initialize
    build_category
    build_station
  end

  def build_category
    category1 = AltFuel.create(name: "All",
                                description: "Includes all fuel types")
    category2 = AltFuel.create(name: "BD",
                                description: "Biodiesel (B20 and above)")
    category3 = AltFuel.create(name: "CNG",
                                description: "Compressed Natural Gas")
    category4 = AltFuel.create(name: "E85",
                                description: "Ethanol")
    category5 = AltFuel.create(name: "ELEC",
                                description: "Electric Charging")
    category6 = AltFuel.create(name: "HY",
                                description: "Hydrogen")
    category7 = AltFuel.create(name: "LNG",
                                description: "Liquefied Natural Gas")
    category8 = AltFuel.create(name: "LPG",
                                description: "Liquefied Petroleum Gas (Propane)")
  end

  def build_station
    station1 = Station.create(access_days_time: "24 hours daily; also accept Propel Clean Drive fleet card",
                              bd_blends: nil,
                              cards_accepted: "A D M V FuelMan Voyager Wright_Exp",
                              city: "Fremont",
                              date_last_confirmed: "2013-01-31",
                              expected_date: nil,
                              fuel_type_code: "E85",
                              geocode_status: "200-8",
                              groups_with_access_code: "Public - credit card at all times",
                              hy_status_link: nil,
                              intersection_directions: "Stevenson Blvd & Paseo Padre Pkwy",
                              latitude: 37.5486034,
                              longitude: -121.9717542,
                              open_date: "2010-08-02",
                              owner_type_code: "P",
                              plus4: nil,
                              station_name: "Propel Fuels",
                              station_phone: "800-871-0773",
                              status_code: "E",
                              street_address: "39707 Paseo Padre Pkwy",
                              zip: "94538",
                              state: "CA",
                              ng_fill_type_code: nil,
                              ng_psi: nil,
                              ng_vehicle_class: nil,
                              e85_blender_pump: false,
                              ev_level1_evse_num: nil,
                              ev_level2_evse_num: nil,
                              ev_dc_fast_num: nil,
                              ev_other_evse: nil,
                              ev_network: nil,
                              ev_network_web: nil,
                              lpg_primary: nil,
                              specific_station_id: 35946,
                              updated_at: "2013-02-14T18:43:05Z",
                              distance: 0.09922)

    station2 = Station.create(access_days_time: "24 hours daily",
                              bd_blends: nil,
                              cards_accepted: "A D M V Voyager Wright_Exp",
                              city: "Modesto",
                              date_last_confirmed: "2012-09-30",
                              expected_date: nil,
                              fuel_type_code: "E85",
                              geocode_status: "200-8",
                              groups_with_access_code: "Public - credit card at all times",
                              hy_status_link: nil,
                              intersection_directions: nil,
                              latitude: 37.634028,
                              longitude: -120.9944148,
                              open_date: "2010-06-15",
                              owner_type_code: "P",
                              plus4: nil,
                              station_name: "Pacific Pride - Boyett Petroleum",
                              station_phone: "209-577-6000",
                              status_code: "E",
                              street_address: "401 9th St",
                              zip: "95350",
                              state: "CA",
                              ng_fill_type_code: nil,
                              ng_psi: nil,
                              ng_vehicle_class: nil,
                              e85_blender_pump: false,
                              ev_level1_evse_num: nil,
                              ev_level2_evse_num: nil,
                              ev_dc_fast_num: nil,
                              ev_other_evse: nil,
                              ev_network: nil,
                              ev_network_web: nil,
                              lpg_primary: nil,
                              specific_station_id: 35947,
                              updated_at: "2012-10-12T18:28:47Z",
                              distance: 0.09922)

    station3 = Station.create(access_days_time: "24 hours daily; also accept Natural Fuels Card",
                              bd_blends: nil,
                              cards_accepted: "CleanEnergy",
                              city: "Denver",
                              date_last_confirmed: "2012-08-31",
                              expected_date: nil,
                              fuel_type_code: "CNG",
                              geocode_status: "200-8",
                              groups_with_access_code: "Public - card key at all times",
                              hy_status_link: nil,
                              intersection_directions: "I-25, exit onto Speer Boulevard S, left on Colfax Avenue, right on Broadway",
                              latitude: 39.73233,
                              longitude: -104.988,
                              open_date: "1996-12-15",
                              owner_type_code: "P",
                              plus4: "2707",
                              station_name: "Clean Energy - Valero #4086",
                              station_phone: "562-493-2804",
                              status_code: "E",
                              street_address: "1001 Broadway St",
                              zip: "80204",
                              state: "CO",
                              ng_fill_type_code: "Q",
                              ng_psi: "3000 3600",
                              ng_vehicle_class: "MD",
                              e85_blender_pump: nil,
                              ev_level1_evse_num: nil,
                              ev_level2_evse_num: nil,
                              ev_dc_fast_num: nil,
                              ev_other_evse: nil,
                              ev_network: nil,
                              ev_network_web: nil,
                              lpg_primary: nil,
                              id: 635,
                              updated_at: "2012-09-14T18:25:45Z",
                              distance: 0.09922)

    station4 = Station.create(access_days_time: nil,
                              bd_blends: nil,
                              cards_accepted: nil,
                              city: "Golden",
                              date_last_confirmed: "2012-12-31",
                              expected_date: nil,
                              fuel_type_code: "ELEC",
                              geocode_status: "200-8",
                              groups_with_access_code: "Private access only",
                              hy_status_link: nil,
                              intersection_directions: "Building 17",
                              latitude: 39.7408399,
                              longitude: -105.1685277,
                              open_date: "2011-05-20",
                              owner_type_code: "FG",
                              plus4: nil,
                              station_name: "National Renewable Energy Laboratory - Denver West",
                              station_phone: nil,
                              status_code: "E",
                              street_address: "15013 Denver West Pkwy",
                              zip: "80401",
                              state: "CO",
                              ng_fill_type_code: nil,
                              ng_psi: nil,
                              ng_vehicle_class: nil,
                              e85_blender_pump: nil,
                              ev_level1_evse_num: nil,
                              ev_level2_evse_num: 38,
                              ev_dc_fast_num: nil,
                              ev_other_evse: nil,
                              ev_network: nil,
                              ev_network_web: nil,
                              lpg_primary: nil,
                              id: 39534,
                              updated_at: "2013-01-16T16:09:02Z",
                              distance: 0.92673)
  end
end
Seed.new
