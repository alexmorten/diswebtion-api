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

ActiveRecord::Schema.define(version: 20170526131216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arguments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "side_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["side_id"], name: "index_arguments_on_side_id", using: :btree
    t.index ["user_id"], name: "index_arguments_on_user_id", using: :btree
  end

  create_table "conditions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["topic_id"], name: "index_conditions_on_topic_id", using: :btree
    t.index ["user_id"], name: "index_conditions_on_user_id", using: :btree
  end

  create_table "sides", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["topic_id"], name: "index_sides_on_topic_id", using: :btree
    t.index ["user_id"], name: "index_sides_on_user_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_topics_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arguments", "sides"
  add_foreign_key "arguments", "users"
  add_foreign_key "conditions", "topics"
  add_foreign_key "conditions", "users"
  add_foreign_key "sides", "topics"
  add_foreign_key "sides", "users"
  add_foreign_key "topics", "users"
end
