# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_06_134927) do

  create_table "articels", force: :cascade do |t|
    t.string "head"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "fullname"
    t.date "dob"
    t.integer "age"
    t.string "personalemail"
    t.string "hobby"
    t.string "address"
    t.string "personalphoneNo"
    t.string "gender"
    t.string "role"
    t.string "worklocation"
    t.string "professionalemail"
    t.string "contry_code"
    t.string "professionalphoneNo"
    t.string "qualification"
    t.text "college"
    t.text "city"
    t.text "state"
    t.string "socialId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string "fullname"
    t.date "dob"
    t.integer "age"
    t.string "personalemail"
    t.string "hobby"
    t.string "address"
    t.string "personalphoneNo"
    t.string "gender"
    t.string "role"
    t.string "worklocation"
    t.string "professionalemail"
    t.string "contry_code"
    t.string "professionalphoneNo"
    t.string "qualification"
    t.text "college"
    t.text "city"
    t.text "state"
    t.string "socialId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
