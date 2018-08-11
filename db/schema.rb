# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180811114605) do

  create_table "gadgets", force: :cascade do |t|
    t.string   "gg_title"
    t.string   "gg_url"
    t.string   "gg_img"
    t.string   "gg_youtube01"
    t.string   "gg_youtube02"
    t.string   "gg_bprice"
    t.string   "gg_aprice"
    t.string   "gg_sales"
    t.string   "gg_source"
    t.string   "gg_option_01"
    t.string   "gg_option_02"
    t.string   "gg_option_03"
    t.string   "gg_option_04"
    t.string   "gg_option_05"
    t.string   "gg_option_06"
    t.text     "gg_intro"
    t.string   "gg_spare_01"
    t.string   "gg_spare_02"
    t.string   "gg_spare_03"
    t.string   "gg_spare_04"
    t.string   "gg_spare_05"
    t.text     "gg_spare_06"
    t.text     "gg_spare_07"
    t.text     "gg_spare_08"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
