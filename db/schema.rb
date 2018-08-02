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

ActiveRecord::Schema.define(version: 2018_07_26_082137) do

  create_table "grades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "title_lesson"
    t.integer "title_unit"
    t.string "title_content"
    t.integer "last_lesson_time"
    t.text "last_lesson_content"
    t.string "object"
    t.integer "intro_time"
    t.text "intro_content"
    t.integer "practice_time"
    t.text "practice_content"
    t.integer "working_time"
    t.text "working_content"
    t.text "diff_support"
    t.text "diff_enrich"
    t.integer "assess_time"
    t.text "assess_content"
    t.integer "review_time"
    t.text "review_content"
    t.bigint "grade_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id", "subject_id", "created_at"], name: "index_lessons_on_grade_id_and_subject_id_and_created_at"
    t.index ["grade_id"], name: "index_lessons_on_grade_id"
    t.index ["subject_id"], name: "index_lessons_on_subject_id"
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lessons", "grades"
  add_foreign_key "lessons", "subjects"
end
