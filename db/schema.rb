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

ActiveRecord::Schema.define(version: 20170523015906) do

  create_table "label_meta", force: :cascade do |t|
    t.integer "label_id"
    t.text "text"
    t.integer "lang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_label_meta_on_label_id"
    t.index ["lang_id"], name: "index_label_meta_on_lang_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "tips"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "langs", force: :cascade do |t|
    t.text "name"
    t.string "min"
    t.integer "code"
  end

  create_table "metaposts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_meta", force: :cascade do |t|
    t.integer "page_id"
    t.text "title"
    t.text "summary"
    t.text "text"
    t.integer "lang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lang_id"], name: "index_page_meta_on_lang_id"
    t.index ["page_id"], name: "index_page_meta_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "tips"
    t.text "href"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_data", force: :cascade do |t|
    t.integer "user_id"
    t.integer "payment_system_id"
    t.integer "payment_meta_id"
    t.string "value"
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
    t.string "name"
    t.string "value"
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

  create_table "post_meta", force: :cascade do |t|
    t.integer "post_id"
    t.string "title"
    t.text "summary"
    t.text "body"
    t.integer "lang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lang_id"], name: "index_post_meta_on_lang_id"
    t.index ["post_id"], name: "index_post_meta_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "href"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rate_balances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rate_meta", force: :cascade do |t|
    t.string "name"
  end

  create_table "rate_meta_values", force: :cascade do |t|
    t.integer "rate_meta_id"
    t.integer "rate_id"
    t.string "value"
    t.index ["rate_id"], name: "index_rate_meta_values_on_rate_id"
    t.index ["rate_meta_id"], name: "index_rate_meta_values_on_rate_meta_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "name"
  end

  create_table "statistic_auths", force: :cascade do |t|
    t.integer "statistic_meta_id"
    t.integer "user_id"
    t.string "name"
    t.string "ip"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["statistic_meta_id"], name: "index_statistic_auths_on_statistic_meta_id"
    t.index ["user_id"], name: "index_statistic_auths_on_user_id"
  end

  create_table "statistic_meta", force: :cascade do |t|
    t.string "name"
  end

  create_table "statistic_pays", force: :cascade do |t|
    t.integer "statistic_metum_id"
    t.integer "user_id"
    t.integer "payment_system_id"
    t.integer "rate_id"
    t.string "value"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_system_id"], name: "index_statistic_pays_on_payment_system_id"
    t.index ["rate_id"], name: "index_statistic_pays_on_rate_id"
    t.index ["statistic_metum_id"], name: "index_statistic_pays_on_statistic_metum_id"
    t.index ["user_id"], name: "index_statistic_pays_on_user_id"
  end

  create_table "user_balanсes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "payment_system_id"
    t.string "value"
    t.index ["payment_system_id"], name: "index_user_balanсes_on_payment_system_id"
    t.index ["user_id"], name: "index_user_balanсes_on_user_id"
  end

  create_table "user_meta", force: :cascade do |t|
    t.integer "user_metum_value_id"
    t.integer "user_id"
    t.string "value"
    t.index ["user_id"], name: "index_user_meta_on_user_id"
    t.index ["user_metum_value_id"], name: "index_user_meta_on_user_metum_value_id"
  end

  create_table "user_metum_values", force: :cascade do |t|
    t.text "name"
  end

  create_table "user_statuses", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_login"
    t.string "password_digest"
    t.text "user_nicename"
    t.string "user_email"
    t.text "remember_token"
    t.text "user_recovery_key"
    t.text "user_aktiv_key"
    t.string "user_url"
    t.integer "user_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["user_email"], name: "index_users_on_user_email"
    t.index ["user_login"], name: "index_users_on_user_login"
    t.index ["user_status_id"], name: "index_users_on_user_status_id"
  end

end
