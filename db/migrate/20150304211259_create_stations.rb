class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string   :access_days_time
      t.string   :bd_blends
      t.string   :cards_accepted
      t.string   :city
      t.date     :date_last_confirmed
      t.date     :expected_date
      t.string   :fuel_type_code
      t.string   :geocode_status
      t.string   :groups_with_access_code
      t.string   :hy_status_link
      t.string   :intersection_directions
      t.decimal  :latitude
      t.decimal  :longitude
      t.date     :open_date
      t.string   :owner_type_code
      t.string   :plus4
      t.string   :station_name
      t.string   :station_phone
      t.string   :status_code
      t.string   :street_address
      t.string   :zip
      t.string   :state
      t.string   :ng_fill_type_code
      t.string   :ng_psi
      t.string   :ng_vehicle_class
      t.boolean  :e85_blender_pump
      t.integer  :ev_level1_evse_num
      t.integer  :ev_level2_evse_num
      t.integer  :ev_dc_fast_num
      t.string   :ev_other_evse
      t.string   :ev_network
      t.string   :ev_network_web
      t.boolean  :lpg_primary
      t.integer  :specific_station_id
      t.datetime :updated_at
      t.decimal  :distance
      t.timestamps null: false
    end
  end
end
