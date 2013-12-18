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

ActiveRecord::Schema.define(version: 20131218022711) do

  create_table "buyers", force: true do |t|
    t.integer  "person_id"
    t.integer  "car_id"
    t.integer  "employee_id"
    t.integer  "payment_method_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "color"
    t.date     "delivery_date"
    t.date     "date_of_sale"
    t.float    "price"
    t.integer  "status_id"
    t.integer  "buyer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "person_id"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_informations", force: true do |t|
    t.integer  "person_id"
    t.integer  "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.integer  "person_id"
    t.integer  "position_id"
    t.date     "date_of_birth"
    t.date     "hire_date"
    t.float    "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modifications", force: true do |t|
    t.integer  "car_id"
    t.integer  "length"
    t.float    "width"
    t.float    "height"
    t.integer  "seats"
    t.integer  "weight"
    t.integer  "max_speed"
    t.string   "type_of_engine"
    t.float    "engine_capacity"
    t.string   "fuel_supply_system"
    t.integer  "fuel_consumption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_methods", force: true do |t|
    t.string   "title"
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

  create_table "positions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.integer  "car_id"
    t.integer  "phone"
    t.string   "address"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
