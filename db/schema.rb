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

ActiveRecord::Schema.define(version: 2022_05_19_222859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biographies", force: :cascade do |t|
    t.string "name"
    t.string "congressional_type"
    t.string "state"
    t.integer "age"
    t.string "photo"
    t.string "gender"
    t.string "district"
    t.integer "years_in_office"
    t.integer "next_election"
    t.integer "representative_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "planned_parenthood"
    t.integer "americans_for_prosperity"
    t.integer "aclu"
    t.integer "end_citizens_united"
    t.integer "national_education_association"
    t.integer "national_association_of_police"
    t.integer "national_parks_conservation"
    t.integer "nra"
    t.integer "numbers_usa"
    t.integer "norml"
    t.integer "representative_id"
  end

  create_table "representatives", force: :cascade do |t|
    t.integer "votesmart_id"
    t.bigint "biography_id"
    t.bigint "rating_id"
    t.index ["biography_id"], name: "index_representatives_on_biography_id"
    t.index ["rating_id"], name: "index_representatives_on_rating_id"
  end

  add_foreign_key "representatives", "biographies"
  add_foreign_key "representatives", "ratings"
end
