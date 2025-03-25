# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_25_042445) do
  create_table "races", force: :cascade do |t|
    t.string "event"
    t.integer "event_no"
    t.string "age_group"
    t.string "course"
    t.integer "heat"
    t.integer "lane"
    t.decimal "seed_time"
    t.decimal "final_time"
    t.date "race_date"
    t.integer "swim_meet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["swim_meet_id"], name: "index_races_on_swim_meet_id"
  end

  create_table "swim_meets", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.string "url"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usa_swimming_time_standards", force: :cascade do |t|
    t.string "standard_type"
    t.string "age_group"
    t.integer "age"
    t.string "gender"
    t.string "event"
    t.string "course"
    t.decimal "b"
    t.decimal "bb"
    t.decimal "a"
    t.decimal "aa"
    t.decimal "aaa"
    t.decimal "aaaa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "races", "swim_meets"
end
