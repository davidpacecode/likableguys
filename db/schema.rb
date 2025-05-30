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

ActiveRecord::Schema[8.0].define(version: 2025_05_03_031750) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "races", force: :cascade do |t|
    t.integer "distance"
    t.string "stroke"
    t.integer "event_no"
    t.integer "heat"
    t.integer "lane"
    t.decimal "seed_time"
    t.decimal "final_time"
    t.integer "place"
    t.date "race_date"
    t.integer "swim_meet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "dq", default: false
    t.index ["swim_meet_id"], name: "index_races_on_swim_meet_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "swim_meets", force: :cascade do |t|
    t.string "name"
    t.string "venue"
    t.string "address"
    t.date "start_date"
    t.date "end_date"
    t.string "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_time_cuts", force: :cascade do |t|
    t.string "age_group"
    t.string "gender"
    t.integer "distance"
    t.string "stroke"
    t.string "course"
    t.decimal "tags_time"
    t.decimal "bonus_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort_order"
  end

  create_table "time_standards", force: :cascade do |t|
    t.string "standard_type"
    t.string "age_group"
    t.integer "age"
    t.string "gender"
    t.integer "distance"
    t.string "stroke"
    t.integer "sort_order"
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

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "races", "swim_meets"
  add_foreign_key "sessions", "users"
end
