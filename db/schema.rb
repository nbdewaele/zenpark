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

ActiveRecord::Schema.define(version: 20171011215911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "installs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_installs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true
  end

  create_table "listings", force: :cascade do |t|
    t.string "listing_name"
    t.text "summary"
    t.string "address"
    t.integer "price"
    t.boolean "active"
    t.bigint "user_id"
    t.string "print_in_person"
    t.string "email_print_pickup"
    t.string "email_print_dropoff"
    t.string "email_print_mail_off"
    t.string "copy"
    t.string "photo_print"
    t.boolean "is_laser"
    t.boolean "is_ink"
    t.boolean "is_laminate"
    t.boolean "is_blackwhite"
    t.boolean "is_color"
    t.boolean "is_double_sided"
    t.boolean "is_stapled"
    t.boolean "is_paperclipped"
    t.boolean "is_envelope"
    t.boolean "is_manilla"
    t.boolean "is_three_hole_punch"
    t.string "is_proofing"
    t.boolean "is_mailed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "paper_service"
    t.string "accommodate"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fullname"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "phone_number"
    t.text "description"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "listings", "users"
end
