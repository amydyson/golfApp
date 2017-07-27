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

ActiveRecord::Schema.define(version: 20170721234214) do

  create_table "golfers", force: :cascade do |t|
    t.string "name"
    t.decimal "handicap"
    t.integer "ghin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "h1"
    t.integer "h2"
    t.integer "h3"
    t.integer "h4"
    t.integer "h5"
    t.integer "h6"
    t.integer "h7"
    t.integer "h8"
    t.integer "h9"
    t.integer "h10"
    t.integer "h11"
    t.integer "h12"
    t.integer "h13"
    t.integer "h14"
    t.integer "h15"
    t.integer "h16"
    t.integer "h17"
    t.integer "h18"
    t.integer "golfer_id"
    t.integer "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["golfer_id"], name: "index_scores_on_golfer_id"
    t.index ["tournament_id"], name: "index_scores_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.date "date"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
