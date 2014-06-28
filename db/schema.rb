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

ActiveRecord::Schema.define(version: 20140628075337) do

  create_table "amenities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookings", force: true do |t|
    t.string   "title"
    t.date     "date_reserved"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "all_day"
    t.string   "status"
    t.string   "message"
    t.datetime "expiry_date"
    t.boolean  "is_viewed"
    t.boolean  "all_reserved"
    t.integer  "venue_id"
    t.integer  "room_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.boolean  "is_booked"
    t.text     "classification"
    t.integer  "capacity"
    t.integer  "booking_id"
    t.integer  "venue_id"
    t.text     "amenities"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "company_name"
    t.string   "address"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "mobile"
    t.integer  "telephone"
    t.text     "profile_picture"
    t.date     "birthday"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suppliers", ["email"], name: "index_suppliers_on_email", unique: true
  add_index "suppliers", ["reset_password_token"], name: "index_suppliers_on_reset_password_token", unique: true

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "mobile"
    t.integer  "telephone"
    t.text     "profile_picture"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

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
