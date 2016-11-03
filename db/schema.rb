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

ActiveRecord::Schema.define(version: 20161103170315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facts", force: :cascade do |t|
    t.string   "text",       default: "", null: false
    t.integer  "author_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["author_id"], name: "index_facts_on_author_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "votes", force: :cascade do |t|
    t.boolean  "hot",        default: false
    t.boolean  "not",        default: false
    t.integer  "user_id"
    t.integer  "fact_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["fact_id"], name: "index_votes_on_fact_id", using: :btree
    t.index ["user_id"], name: "index_votes_on_user_id", using: :btree
  end

end
