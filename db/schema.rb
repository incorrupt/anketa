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

ActiveRecord::Schema.define(version: 20130831200540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departs", force: true do |t|
    t.string   "name",       limit: 1000
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factors", force: true do |t|
    t.string   "name",       limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "subject",    limit: 1000
    t.string   "contact"
    t.string   "message",    limit: 4000
    t.string   "session_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.string   "name",       limit: 1000
    t.float    "value"
    t.integer  "factor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "votes", force: true do |t|
    t.float    "value"
    t.integer  "worksheet_id"
    t.integer  "depart_id"
    t.integer  "factor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worksheets", force: true do |t|
    t.float    "contrib"
    t.datetime "end_date"
    t.integer  "depart_id"
    t.string   "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
