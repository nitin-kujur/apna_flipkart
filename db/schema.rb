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

ActiveRecord::Schema.define(version: 20160611095507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "type"
    t.integer  "postal_code"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.boolean  "active"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts_products", id: false, force: :cascade do |t|
    t.integer "cart_id"
    t.integer "product_id"
  end

  add_index "carts_products", ["cart_id"], name: "index_carts_products_on_cart_id", using: :btree
  add_index "carts_products", ["product_id"], name: "index_carts_products_on_product_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "tag"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id", using: :btree

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.string   "discount_type"
    t.integer  "amount"
    t.date     "expiry_date"
    t.integer  "max_limit"
    t.text     "description"
    t.integer  "max_use"
    t.integer  "count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "delivery_date"
    t.date     "pickup_date"
    t.integer  "cost"
    t.integer  "coupon_id"
    t.integer  "discount"
    t.integer  "final_cost"
    t.integer  "address_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "payment_transactions", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "user_id"
    t.string   "status"
    t.string   "type"
    t.string   "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "pid",                        null: false
    t.string   "pname"
    t.text     "description"
    t.text     "pimg_url"
    t.integer  "cost"
    t.integer  "discount"
    t.string   "discount_type", default: "", null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "quantity"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mobile"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
