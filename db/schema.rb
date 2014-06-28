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

ActiveRecord::Schema.define(version: 20140628064916) do

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "classification"
    t.string   "capacity"
    t.boolean  "is_featured"
    t.text     "location"
    t.text     "environment"
    t.text     "comments"
    t.text     "rates"
    t.text     "contact_persons"
    t.text     "contact_numbers"
    t.boolean  "status"
    t.integer  "booking_count"
    t.text     "caterers"
    t.text     "policy"
    t.boolean  "is_booked"
    t.integer  "freeroom_count"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
