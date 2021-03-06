# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150309200824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alt_fuels", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "locations", force: :cascade do |t|
    t.float  "latitude"
    t.float  "longitude"
    t.string "address"
  end

  create_table "stations", force: :cascade do |t|
    t.string   "access_days_time"
    t.string   "bd_blends"
    t.string   "cards_accepted"
    t.string   "city"
    t.date     "date_last_confirmed"
    t.date     "expected_date"
    t.string   "fuel_type_code"
    t.string   "geocode_status"
    t.string   "groups_with_access_code"
    t.string   "hy_status_link"
    t.string   "intersection_directions"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.date     "open_date"
    t.string   "owner_type_code"
    t.string   "plus4"
    t.string   "station_name"
    t.string   "station_phone"
    t.string   "status_code"
    t.string   "street_address"
    t.string   "zip"
    t.string   "state"
    t.string   "ng_fill_type_code"
    t.string   "ng_psi"
    t.string   "ng_vehicle_class"
    t.boolean  "e85_blender_pump"
    t.integer  "ev_level1_evse_num"
    t.integer  "ev_level2_evse_num"
    t.integer  "ev_dc_fast_num"
    t.string   "ev_other_evse"
    t.string   "ev_network"
    t.string   "ev_network_web"
    t.boolean  "lpg_primary"
    t.integer  "specific_station_id"
    t.datetime "updated_at",              null: false
    t.decimal  "distance"
    t.datetime "created_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "provider"
    t.string   "token"
    t.string   "uid"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
  end

end
