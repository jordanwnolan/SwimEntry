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

ActiveRecord::Schema.define(version: 20140517191337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coaches", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "team_id"
  end

  add_index "coaches", ["email"], name: "index_coaches_on_email", unique: true, using: :btree
  add_index "coaches", ["reset_password_token"], name: "index_coaches_on_reset_password_token", unique: true, using: :btree

  create_table "meets", force: true do |t|
    t.date     "meet_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meet_name"
  end

  create_table "swim_events", force: true do |t|
    t.string   "event_name"
    t.integer  "event_distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "swimmer_entries", force: true do |t|
    t.integer  "meet_id"
    t.integer  "swim_event_id"
    t.integer  "swimmer_id"
    t.integer  "entry_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "swimmers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "initials"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
