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

ActiveRecord::Schema.define(version: 20170602114035) do

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
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "argument_id"
    t.integer  "condition_id"
    t.integer  "user_id"
    t.integer  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["argument_id", "condition_id", "user_id"], name: "index_votes_on_argument_id_and_condition_id_and_user_id", unique: true, using: :btree
    t.index ["argument_id"], name: "index_votes_on_argument_id", using: :btree
    t.index ["condition_id"], name: "index_votes_on_condition_id", using: :btree
    t.index ["user_id"], name: "index_votes_on_user_id", using: :btree
  end

  add_foreign_key "arguments", "sides"
  add_foreign_key "arguments", "users"
  add_foreign_key "conditions", "topics"
  add_foreign_key "conditions", "users"
  add_foreign_key "sides", "topics"
  add_foreign_key "sides", "users"
  add_foreign_key "topics", "users"
  add_foreign_key "votes", "arguments"
  add_foreign_key "votes", "conditions"
  add_foreign_key "votes", "users"
end
