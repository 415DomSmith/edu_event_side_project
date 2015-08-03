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

ActiveRecord::Schema.define(version: 20150803210346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associations", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "associations", ["event_id"], name: "index_associations_on_event_id", using: :btree
  add_index "associations", ["tag_id"], name: "index_associations_on_tag_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.text     "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.text     "address"
    t.text     "description"
    t.string   "cost"
    t.string   "lat"
    t.string   "long"
    t.string   "city"
    t.text     "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "associations", "events"
  add_foreign_key "associations", "tags"
end
