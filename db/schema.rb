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

ActiveRecord::Schema.define(version: 2021_05_01_111622) do

  create_table "durations", force: :cascade do |t|
    t.integer "no_of_months"
    t.string "display_name"
  end

  create_table "durations_visa_details", force: :cascade do |t|
    t.integer "duration_id"
    t.integer "visa_detail_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
  end

  create_table "relationships_users", force: :cascade do |t|
    t.integer "relationship_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "visa_detail_id"
    t.string "family_name"
    t.text "given_names"
    t.string "gender"
    t.date "date_of_birth"
    t.integer "passport_number"
    t.string "country_of_passport"
    t.string "passport_nationality"
    t.date "date_of_issue"
    t.date "date_of_expired"
    t.text "issueing_authority"
  end

  create_table "visa_details", force: :cascade do |t|
    t.boolean "used_pen"
    t.boolean "outside_country"
    t.boolean "inside_country"
    t.date "visiting_from"
    t.date "visiting_to"
    t.boolean "is_more_occasion"
    t.text "types_of_occasion"
    t.date "date_of_extend"
    t.text "detailed_description"
    t.string "image_file"
    t.string "name_of_city"
    t.string "name_of_state"
    t.string "name_of_country"
  end

end
