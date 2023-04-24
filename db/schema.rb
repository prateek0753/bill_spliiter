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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140109204750) do

  create_table "bills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "amount"
    t.integer  "user_id"
  end

  create_table "debts", :force => true do |t|
    t.integer  "bill_id"
    t.integer  "debtor_id"
    t.integer  "creditor_id"
    t.float    "amount"
    t.boolean  "is_a_payment"
    t.string   "memo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "debtor_name"
    t.string   "creditor_name"
  end

  create_table "guests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "bill_id"
    t.float    "amount_paid"
    t.float    "amount_should_have_paid"
    t.string   "name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "session_token"
    t.float    "money_lent"
    t.float    "money_borrowed"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "guest"
  end

end
