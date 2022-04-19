# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_19_212056) do

  create_table "feedback", force: :cascade do |t|
    t.integer "score"
    t.text "feedback"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "presentation_id"
    t.index ["presentation_id"], name: "index_feedback_on_presentation_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "score"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "presentation_id"
    t.index ["presentation_id"], name: "index_feedbacks_on_presentation_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.string "grade"
    t.string "presentation_name"
    t.string "student_name"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "feedback", "presentations"
  add_foreign_key "feedbacks", "presentations"
end
