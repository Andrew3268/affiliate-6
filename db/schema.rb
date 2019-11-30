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

ActiveRecord::Schema.define(version: 20191130081551) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"

  create_table "gadgets", force: :cascade do |t|
    t.string   "gg_title"
    t.string   "gg_url"
    t.string   "gg_img"
    t.string   "gg_youtube01"
    t.string   "gg_youtube02"
    t.string   "gg_bprice"
    t.string   "gg_aprice"
    t.string   "gg_sales"
    t.string   "gg_summary"
    t.string   "gg_from"
    t.string   "gg_bottomline"
    t.string   "gg_source_01"
    t.string   "gg_source_02"
    t.string   "gg_source_03"
    t.string   "gg_source_04"
    t.string   "gg_source_05"
    t.string   "gg_source_link_01"
    t.string   "gg_source_link_02"
    t.string   "gg_source_link_03"
    t.string   "gg_source_link_04"
    t.string   "gg_source_link_05"
    t.text     "gg_intro"
    t.text     "gg_pro_01"
    t.text     "gg_pro_02"
    t.text     "gg_pro_03"
    t.text     "gg_pro_04"
    t.text     "gg_pro_05"
    t.text     "gg_pro_06"
    t.text     "gg_pro_07"
    t.text     "gg_pro_08"
    t.text     "gg_pro_09"
    t.text     "gg_pro_10"
    t.text     "gg_con_01"
    t.text     "gg_con_02"
    t.text     "gg_con_03"
    t.text     "gg_con_04"
    t.text     "gg_con_05"
    t.text     "gg_con_06"
    t.text     "gg_con_07"
    t.string   "gg_option_01"
    t.string   "gg_option_02"
    t.string   "gg_option_03"
    t.string   "gg_option_04"
    t.string   "gg_option_05"
    t.string   "gg_option_06"
    t.string   "gg_spare_01"
    t.string   "gg_spare_02"
    t.string   "gg_spare_03"
    t.string   "gg_spare_04"
    t.string   "gg_spare_05"
    t.text     "gg_spare_06"
    t.text     "gg_spare_07"
    t.text     "gg_spare_08"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "slug"
  end

  add_index "gadgets", ["slug"], name: "index_gadgets_on_slug", unique: true

  create_table "hotdeals", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "h_title"
    t.text     "h_description"
    t.string   "h_image"
    t.string   "h_link"
    t.string   "h_price"
    t.string   "h_list_price"
    t.string   "h_percentage"
    t.string   "h_keyword"
    t.string   "h_spare_01"
    t.string   "h_spare_02"
    t.string   "h_spare_03"
    t.string   "h_spare_04"
    t.string   "h_spare_05"
    t.string   "h_spare_06"
    t.string   "h_spare_07"
    t.string   "h_spare_08"
    t.string   "h_spare_09"
    t.string   "h_spare_10"
    t.string   "h_spare_11"
    t.string   "h_spare_12"
    t.string   "h_spare_13"
    t.string   "h_spare_14"
    t.string   "h_spare_15"
    t.string   "h_spare_16"
    t.string   "h_spare_17"
    t.string   "h_spare_18"
    t.string   "h_spare_20"
    t.text     "h_spare_21"
    t.text     "h_spare_22"
    t.text     "h_spare_23"
    t.text     "h_spare_24"
    t.text     "h_spare_25"
    t.text     "h_spare_26"
    t.text     "h_spare_27"
    t.text     "h_spare_28"
    t.text     "h_spare_29"
    t.text     "h_spare_30"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "himage_file_name"
    t.string   "himage_content_type"
    t.integer  "himage_file_size",    limit: 8
    t.datetime "himage_updated_at"
    t.string   "slug"
    t.integer  "impressions_count"
    t.integer  "h_spare_31"
    t.integer  "h_spare_32"
    t.integer  "h_spare_33"
    t.integer  "h_spare_34"
    t.integer  "h_spare_35"
    t.float    "h_spare_41"
    t.float    "h_spare_42"
    t.float    "h_spare_43"
    t.float    "h_spare_44"
    t.float    "h_spare_45"
    t.decimal  "h_spare_51"
    t.decimal  "h_spare_52"
    t.decimal  "h_spare_53"
    t.decimal  "h_spare_54"
    t.decimal  "h_spare_55"
  end

  add_index "hotdeals", ["slug"], name: "index_hotdeals_on_slug", unique: true

  create_table "hotdeals_tags", id: false, force: :cascade do |t|
    t.integer "hotdeal_id"
    t.integer "tag_id"
  end

  add_index "hotdeals_tags", ["hotdeal_id"], name: "index_hotdeals_tags_on_hotdeal_id"
  add_index "hotdeals_tags", ["tag_id"], name: "index_hotdeals_tags_on_tag_id"

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "mtitle"
    t.string   "mmail"
    t.text     "mcontent"
    t.string   "m_spare_01"
    t.string   "m_spare_02"
    t.string   "m_spare_03"
    t.string   "m_spare_04"
    t.string   "m_spare_05"
    t.string   "m_spare_06"
    t.string   "m_spare_07"
    t.string   "m_spare_08"
    t.string   "m_spare_09"
    t.string   "m_spare_10"
    t.text     "m_spare_11"
    t.text     "m_spare_12"
    t.text     "m_spare_13"
    t.text     "m_spare_14"
    t.text     "m_spare_15"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promocodes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "p_title"
    t.text     "p_description"
    t.string   "p_image"
    t.string   "p_link"
    t.string   "p_price"
    t.string   "p_list_price"
    t.string   "p_percentage"
    t.string   "p_image_title"
    t.string   "p_hashtag"
    t.string   "p_coupon_deal"
    t.string   "p_extra_deal"
    t.string   "p_banner"
    t.string   "p_keyword"
    t.string   "p_promocode"
    t.string   "p_end_date"
    t.string   "p_spare_01"
    t.string   "p_spare_02"
    t.string   "p_spare_03"
    t.string   "p_spare_04"
    t.string   "p_spare_05"
    t.string   "p_spare_06"
    t.string   "p_spare_07"
    t.string   "p_spare_08"
    t.string   "p_spare_09"
    t.string   "p_spare_10"
    t.string   "p_spare_11"
    t.string   "p_spare_12"
    t.string   "p_spare_13"
    t.string   "p_spare_14"
    t.string   "p_spare_15"
    t.string   "p_spare_16"
    t.string   "p_spare_17"
    t.string   "p_spare_18"
    t.string   "p_spare_19"
    t.string   "p_spare_20"
    t.integer  "p_spare_21"
    t.integer  "p_spare_22"
    t.integer  "p_spare_23"
    t.integer  "p_spare_24"
    t.integer  "p_spare_25"
    t.float    "p_spare_26"
    t.float    "p_spare_27"
    t.float    "p_spare_28"
    t.float    "p_spare_29"
    t.float    "p_spare_30"
    t.decimal  "p_spare_31"
    t.decimal  "p_spare_32"
    t.decimal  "p_spare_33"
    t.decimal  "p_spare_34"
    t.decimal  "p_spare_35"
    t.text     "p_spare_36"
    t.text     "p_spare_37"
    t.text     "p_spare_38"
    t.text     "p_spare_39"
    t.text     "p_spare_40"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "pimage_file_name"
    t.string   "pimage_content_type"
    t.integer  "pimage_file_size",    limit: 8
    t.datetime "pimage_updated_at"
    t.string   "slug"
    t.integer  "impressions_count"
    t.datetime "p_spare_50"
    t.datetime "p_spare_51"
    t.date     "p_spare_52"
    t.date     "p_spare_53"
  end

  add_index "promocodes", ["slug"], name: "index_promocodes_on_slug", unique: true

  create_table "promocodes_tags", id: false, force: :cascade do |t|
    t.integer "promocode_id"
    t.integer "tag_id"
  end

  add_index "promocodes_tags", ["promocode_id"], name: "index_promocodes_tags_on_promocode_id"
  add_index "promocodes_tags", ["tag_id"], name: "index_promocodes_tags_on_tag_id"

  create_table "recommends", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "re_filter"
    t.string   "re_title"
    t.string   "re_intro"
    t.text     "sub_intro"
    t.string   "re_image"
    t.string   "sub_number_01"
    t.string   "sub_image_01"
    t.string   "sub_title_01"
    t.text     "sub_intro_01"
    t.string   "sub_source_01"
    t.string   "sub_price_01"
    t.string   "sub_link_01"
    t.string   "sub_youtube_01"
    t.string   "sub_number_02"
    t.string   "sub_image_02"
    t.string   "sub_title_02"
    t.text     "sub_intro_02"
    t.string   "sub_source_02"
    t.string   "sub_price_02"
    t.string   "sub_link_02"
    t.string   "sub_youtube_02"
    t.string   "sub_number_03"
    t.string   "sub_image_03"
    t.string   "sub_title_03"
    t.text     "sub_intro_03"
    t.string   "sub_source_03"
    t.string   "sub_price_03"
    t.string   "sub_link_03"
    t.string   "sub_youtube_03"
    t.string   "sub_number_04"
    t.string   "sub_image_04"
    t.string   "sub_title_04"
    t.text     "sub_intro_04"
    t.string   "sub_source_04"
    t.string   "sub_price_04"
    t.string   "sub_link_04"
    t.string   "sub_youtube_04"
    t.string   "sub_number_05"
    t.string   "sub_image_05"
    t.string   "sub_title_05"
    t.text     "sub_intro_05"
    t.string   "sub_source_05"
    t.string   "sub_price_05"
    t.string   "sub_link_05"
    t.string   "sub_youtube_05"
    t.string   "sub_number_06"
    t.string   "sub_image_06"
    t.string   "sub_title_06"
    t.text     "sub_intro_06"
    t.string   "sub_source_06"
    t.string   "sub_price_06"
    t.string   "sub_link_06"
    t.string   "sub_youtube_06"
    t.string   "sub_number_07"
    t.string   "sub_image_07"
    t.string   "sub_title_07"
    t.text     "sub_intro_07"
    t.string   "sub_source_07"
    t.string   "sub_price_07"
    t.string   "sub_link_07"
    t.string   "sub_youtube_07"
    t.string   "sub_number_08"
    t.string   "sub_image_08"
    t.string   "sub_title_08"
    t.text     "sub_intro_08"
    t.string   "sub_source_08"
    t.string   "sub_price_08"
    t.string   "sub_link_08"
    t.string   "sub_youtube_08"
    t.string   "sub_number_09"
    t.string   "sub_image_09"
    t.string   "sub_title_09"
    t.text     "sub_intro_09"
    t.string   "sub_source_09"
    t.string   "sub_price_09"
    t.string   "sub_link_09"
    t.string   "sub_youtube_09"
    t.string   "sub_number_10"
    t.string   "sub_image_10"
    t.string   "sub_title_10"
    t.text     "sub_intro_10"
    t.string   "sub_source_10"
    t.string   "sub_price_10"
    t.string   "sub_link_10"
    t.string   "sub_youtube_10"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
  end

  add_index "recommends", ["slug"], name: "index_recommends_on_slug", unique: true

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "sdcategories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "sdcategoriy_num"
    t.text     "description"
    t.boolean  "display_in_navbar", default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "spcategories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "spc_category_num"
    t.text     "spc_description"
    t.boolean  "display_in_navbar", default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "storedeals", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "sd_title"
    t.text     "sd_description"
    t.string   "sd_image"
    t.string   "sd_link"
    t.string   "sd_price"
    t.string   "sd_list_price"
    t.string   "sd_percentage"
    t.string   "sd_image_title"
    t.string   "sd_hashtag"
    t.string   "sd_coupon_deal"
    t.string   "sd_extra_deal"
    t.string   "sd_banner"
    t.string   "sd_keyword"
    t.string   "sd_promocode"
    t.string   "sd_end_date"
    t.string   "sd_spare_01"
    t.string   "sd_spare_02"
    t.string   "sd_spare_03"
    t.string   "sd_spare_04"
    t.string   "sd_spare_05"
    t.string   "sd_spare_06"
    t.string   "sd_spare_07"
    t.string   "sd_spare_08"
    t.string   "sd_spare_09"
    t.string   "sd_spare_10"
    t.string   "sd_spare_11"
    t.string   "sd_spare_12"
    t.string   "sd_spare_13"
    t.string   "sd_spare_14"
    t.string   "sd_spare_15"
    t.string   "sd_spare_16"
    t.string   "sd_spare_17"
    t.string   "sd_spare_18"
    t.string   "sd_spare_19"
    t.string   "sd_spare_20"
    t.integer  "sd_spare_21"
    t.integer  "sd_spare_22"
    t.integer  "sd_spare_23"
    t.integer  "sd_spare_24"
    t.integer  "sd_spare_25"
    t.integer  "sd_spare_26"
    t.integer  "sd_spare_27"
    t.integer  "sd_spare_28"
    t.integer  "sd_spare_29"
    t.float    "sd_spare_30"
    t.float    "sd_spare_31"
    t.float    "sd_spare_32"
    t.float    "sd_spare_33"
    t.float    "sd_spare_34"
    t.float    "sd_spare_35"
    t.float    "sd_spare_36"
    t.float    "sd_spare_37"
    t.float    "sd_spare_38"
    t.float    "sd_spare_39"
    t.decimal  "sd_spare_41"
    t.decimal  "sd_spare_42"
    t.decimal  "sd_spare_43"
    t.decimal  "sd_spare_44"
    t.decimal  "sd_spare_45"
    t.decimal  "sd_spare_46"
    t.decimal  "sd_spare_47"
    t.decimal  "sd_spare_48"
    t.decimal  "sd_spare_49"
    t.text     "sd_spare_50"
    t.text     "sd_spare_51"
    t.text     "sd_spare_52"
    t.text     "sd_spare_53"
    t.text     "sd_spare_54"
    t.date     "sd_spare_61"
    t.date     "sd_spare_62"
    t.date     "sd_spare_63"
    t.date     "sd_spare_64"
    t.datetime "sd_spare_65"
    t.datetime "sd_spare_66"
    t.datetime "sd_spare_67"
    t.datetime "sd_spare_68"
    t.integer  "sdcategory_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "impressions_count"
    t.string   "slug"
  end

  add_index "storedeals", ["sdcategory_id"], name: "index_storedeals_on_sdcategory_id"
  add_index "storedeals", ["slug"], name: "index_storedeals_on_slug", unique: true

  create_table "storedeals_tags", id: false, force: :cascade do |t|
    t.integer "storedeal_id"
    t.integer "tag_id"
  end

  add_index "storedeals_tags", ["storedeal_id"], name: "index_storedeals_tags_on_storedeal_id"
  add_index "storedeals_tags", ["tag_id"], name: "index_storedeals_tags_on_tag_id"

  create_table "storepromotions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "sp_title"
    t.string   "sp_store_name"
    t.string   "sp_image"
    t.string   "sp_promocode"
    t.string   "sp_end_date"
    t.string   "sp_link"
    t.float    "sp_percentage_01"
    t.float    "sp_percentage_02"
    t.text     "sp_description"
    t.integer  "spcategory_id"
    t.string   "sp_spare_01"
    t.string   "sp_spare_02"
    t.string   "sp_spare_03"
    t.string   "sp_spare_04"
    t.string   "sp_spare_05"
    t.string   "sp_spare_06"
    t.string   "sp_spare_07"
    t.string   "sp_spare_08"
    t.string   "sp_spare_09"
    t.string   "sp_spare_10"
    t.string   "sp_spare_11"
    t.string   "sp_spare_12"
    t.string   "sp_spare_13"
    t.string   "sp_spare_14"
    t.string   "sp_spare_15"
    t.string   "sp_spare_16"
    t.string   "sp_spare_17"
    t.string   "sp_spare_18"
    t.string   "sp_spare_19"
    t.string   "sp_spare_20"
    t.text     "sp_spare_21"
    t.text     "sp_spare_22"
    t.text     "sp_spare_23"
    t.text     "sp_spare_24"
    t.text     "sp_spare_25"
    t.integer  "sp_spare_30"
    t.integer  "sp_spare_31"
    t.integer  "sp_spare_32"
    t.integer  "sp_spare_33"
    t.integer  "sp_spare_34"
    t.integer  "sp_spare_35"
    t.integer  "sp_spare_36"
    t.integer  "sp_spare_37"
    t.integer  "sp_spare_38"
    t.integer  "sp_spare_39"
    t.float    "sp_spare_40"
    t.float    "sp_spare_41"
    t.float    "sp_spare_42"
    t.float    "sp_spare_43"
    t.float    "sp_spare_44"
    t.float    "sp_spare_45"
    t.float    "sp_spare_46"
    t.float    "sp_spare_47"
    t.float    "sp_spare_48"
    t.float    "sp_spare_49"
    t.decimal  "sp_spare_50"
    t.decimal  "sp_spare_51"
    t.decimal  "sp_spare_52"
    t.decimal  "sp_spare_53"
    t.decimal  "sp_spare_54"
    t.decimal  "sp_spare_55"
    t.decimal  "sp_spare_56"
    t.decimal  "sp_spare_57"
    t.decimal  "sp_spare_58"
    t.decimal  "sp_spare_59"
    t.datetime "sp_spare_60"
    t.datetime "sp_spare_61"
    t.date     "sp_spare_62"
    t.date     "sp_spare_63"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "impressions_count"
  end

  add_index "storepromotions", ["spcategory_id"], name: "index_storepromotions_on_spcategory_id"

  create_table "subcategories", force: :cascade do |t|
    t.string   "subname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
