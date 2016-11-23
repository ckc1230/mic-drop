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

ActiveRecord::Schema.define(version: 20161122235742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "microphones", force: :cascade do |t|
    t.string   "model"
    t.string   "kind"
    t.boolean  "phantom"
    t.string   "polar_pattern"
    t.string   "spec_sheet"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "manufacturer_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["manufacturer_id"], name: "index_microphones_on_manufacturer_id", using: :btree
  end

  create_table "shootout_microphones", force: :cascade do |t|
    t.integer  "shootout_id"
    t.integer  "microphone_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.index ["microphone_id"], name: "index_shootout_microphones_on_microphone_id", using: :btree
    t.index ["shootout_id"], name: "index_shootout_microphones_on_shootout_id", using: :btree
  end

  create_table "shootouts", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "instrument_id"
    t.integer  "user_id"
    t.index ["instrument_id"], name: "index_shootouts_on_instrument_id", using: :btree
    t.index ["user_id"], name: "index_shootouts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "microphones", "manufacturers"
  add_foreign_key "shootout_microphones", "microphones"
  add_foreign_key "shootout_microphones", "shootouts"
  add_foreign_key "shootouts", "instruments"
  add_foreign_key "shootouts", "users"
end
