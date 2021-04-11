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

ActiveRecord::Schema.define(version: 2021_04_11_031356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "syllabuses", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.integer "term"
    t.string "day"
    t.integer "time"
    t.string "faculty"
    t.string "teacher"
    t.integer "grade"
    t.integer "degree"
    t.string "condition"
    t.string "lang"
    t.string "overview"
    t.string "purpose"
    t.string "goal"
    t.string "contents"
    t.string "outofclass_content"
    t.string "outofclass_tile"
    t.string "evaluation"
    t.string "evaluation_note"
    t.string "feedback"
    t.string "feedback_note"
    t.string "activelearning_content"
    t.string "activelearning_howto"
    t.boolean "experience"
    t.string "experience_contents"
    t.string "experience_reduction"
    t.string "textbook"
    t.string "note"
    t.string "url"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
