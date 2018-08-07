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

ActiveRecord::Schema.define(version: 20180807010125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pet_photos", force: :cascade do |t|
    t.bigint "pet_id"
    t.bigint "user_id"
    t.string "photo_path"
    t.string "profile_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_pet_photos_on_pet_id"
    t.index ["user_id"], name: "index_pet_photos_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.integer "breed"
    t.integer "color"
    t.integer "size"
    t.integer "age"
    t.integer "gender"
    t.boolean "vaccined"
    t.boolean "neutered"
    t.boolean "dewormed"
    t.text "notes"
    t.integer "status"
    t.datetime "date"
    t.integer "type"
    t.decimal "price"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "contact"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "pet_photos", "pets"
  add_foreign_key "pet_photos", "users"
  add_foreign_key "pets", "users"
end
