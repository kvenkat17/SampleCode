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

ActiveRecord::Schema.define(version: 20150727045259) do

  create_table "apptschedules", force: :cascade do |t|
    t.date     "date_of_visit"
    t.string   "pet_name",      limit: 255
    t.string   "customer",      limit: 255
    t.boolean  "reminder_flag"
    t.string   "visit_reason",  limit: 255
    t.string   "doctor",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "pet_name",       limit: 255
    t.date     "next_appt_date"
    t.string   "visit_reason",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "pet_name",        limit: 255
    t.string   "type_of_pet",     limit: 255
    t.string   "breed",           limit: 255
    t.integer  "age",             limit: 4
    t.integer  "weight",          limit: 4
    t.date     "last_visit_date"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "veterinarydocslists", force: :cascade do |t|
    t.string   "name",                limit: 35,  null: false
    t.string   "address",             limit: 255
    t.string   "city",                limit: 255
    t.string   "state",               limit: 255
    t.string   "zip",                 limit: 255
    t.string   "school_degree_recvd", limit: 255
    t.integer  "years_in_practice",   limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
