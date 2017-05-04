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

ActiveRecord::Schema.define(version: 20170503085826) do

  create_table "payment_data", force: :cascade do |t|
    t.integer "user_id"
    t.integer "payment_system_id"
    t.integer "payment_meta_id"
    t.string  "value"
    t.integer "payment_value_id"
    t.integer "payment_statys_id"
    t.index ["payment_meta_id"], name: "index_payment_data_on_payment_meta_id"
    t.index ["payment_statys_id"], name: "index_payment_data_on_payment_statys_id"
    t.index ["payment_system_id"], name: "index_payment_data_on_payment_system_id"
    t.index ["payment_value_id"], name: "index_payment_data_on_payment_value_id"
    t.index ["user_id"], name: "index_payment_data_on_user_id"
  end

  create_table "payment_meta", force: :cascade do |t|
    t.integer "payment_system_id"
    t.string  "name"
    t.string  "value"
    t.index ["payment_system_id"], name: "index_payment_meta_on_payment_system_id"
  end

  create_table "payment_staties", force: :cascade do |t|
    t.string "name"
  end

  create_table "payment_systems", force: :cascade do |t|
    t.string "name"
  end

  create_table "payment_values", force: :cascade do |t|
    t.string "name"
  end

  create_table "rate_balances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rate_meta", force: :cascade do |t|
    t.string "value"
  end

  create_table "rate_meta_values", force: :cascade do |t|
    t.integer "rate_meta_id"
    t.integer "rate_id"
    t.string  "value"
    t.index ["rate_id"], name: "index_rate_meta_values_on_rate_id"
    t.index ["rate_meta_id"], name: "index_rate_meta_values_on_rate_meta_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "name"
  end

  create_table "statistic_auths", force: :cascade do |t|
    t.integer  "statistic_meta_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "ip"
    t.datetime "datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["statistic_meta_id"], name: "index_statistic_auths_on_statistic_meta_id"
    t.index ["user_id"], name: "index_statistic_auths_on_user_id"
  end

  create_table "statistic_meta", force: :cascade do |t|
    t.string "value"
  end

  create_table "statistic_pays", force: :cascade do |t|
    t.integer  "statistic_metum_id"
    t.integer  "user_id"
    t.integer  "payment_system_id"
    t.integer  "rate_id"
    t.string   "value"
    t.datetime "datetime"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["payment_system_id"], name: "index_statistic_pays_on_payment_system_id"
    t.index ["rate_id"], name: "index_statistic_pays_on_rate_id"
    t.index ["statistic_metum_id"], name: "index_statistic_pays_on_statistic_metum_id"
    t.index ["user_id"], name: "index_statistic_pays_on_user_id"
  end

  create_table "user_balanсes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "payment_system_id"
    t.string  "value"
    t.index ["payment_system_id"], name: "index_user_balanсes_on_payment_system_id"
    t.index ["user_id"], name: "index_user_balanсes_on_user_id"
  end

  create_table "user_meta", force: :cascade do |t|
    t.integer "user_id"
    t.string  "value"
    t.index ["user_id"], name: "index_user_meta_on_user_id"
  end

  create_table "user_statuses", force: :cascade do |t|
    t.string "value"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_status_id",         default: 0,  null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
