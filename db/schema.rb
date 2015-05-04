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

ActiveRecord::Schema.define(version: 20150504030828) do

  create_table "itemhistories", force: true do |t|
    t.integer  "item_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal  "distance",   precision: 8, scale: 3
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itemhistories", ["item_id"], name: "index_itemhistories_on_item_id"

  create_table "items", force: true do |t|
    t.integer  "itemtype_id"
    t.string   "nickname"
    t.decimal  "distance",    precision: 8, scale: 3
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["itemtype_id"], name: "index_items_on_itemtype_id"

  create_table "itemtypes", force: true do |t|
    t.string   "name"
    t.decimal  "limitdistance", precision: 8, scale: 3
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
