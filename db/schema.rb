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

ActiveRecord::Schema.define(version: 20170620183115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "receivers", force: :cascade do |t|
    t.string   "name"
    t.string   "bloodtype"
    t.string   "donationtype"
    t.integer  "units"
    t.integer  "timestart"
    t.integer  "timeend"
    t.integer  "timestart2"
    t.integer  "timeend2"
    t.string   "days"
    t.string   "hospital"
    t.string   "street"
    t.string   "number"
    t.string   "colony"
    t.string   "zipcode"
    t.string   "state"
    t.string   "city"
    t.string   "contact"
    t.string   "phone"
    t.string   "contact2"
    t.string   "phone2"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
