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

ActiveRecord::Schema.define(version: 20170313122747) do

  create_table "baby_records", force: :cascade do |t|
    t.datetime "datetime"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.time     "record_time"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "area"
    t.string   "address"
    t.string   "contacter"
    t.string   "contact_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "contract_no"
    t.date     "contract_start"
    t.date     "contract_end"
    t.string   "duty_officer"
    t.decimal  "fees",           precision: 8, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "company_id"
    t.string   "company_code"
  end

  add_index "contracts", ["company_id"], name: "index_contracts_on_company_id"

  create_table "devices", force: :cascade do |t|
    t.string   "device_code",    null: false
    t.string   "serial_no"
    t.string   "model_no"
    t.string   "manufacturer"
    t.date     "first_use_date"
    t.date     "verify_date"
    t.integer  "company_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "company_code"
  end

  add_index "devices", ["company_id"], name: "index_devices_on_company_id"

  create_table "list_items", force: :cascade do |t|
    t.string   "itemtype"
    t.string   "itemname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.date     "pay_day"
    t.decimal  "pay_amount"
    t.string   "contract_no"
    t.integer  "contract_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "payments", ["contract_id"], name: "index_payments_on_contract_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
