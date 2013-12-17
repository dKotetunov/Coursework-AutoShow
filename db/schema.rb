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

ActiveRecord::Schema.define(version: 20131217023136) do

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "color"
    t.string   "delivery_date"
    t.string   "date_of_sale"
    t.string   "price"
    t.string   "status_id"
    t.string   "buyer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "person_id"
    t.string   "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_informations", force: true do |t|
    t.string   "person_id"
    t.integer  "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
