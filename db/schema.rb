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

ActiveRecord::Schema.define(version: 2020_05_02_080146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assessment_answer_items", force: :cascade do |t|
    t.bigint "assessment_answer_id", null: false
    t.bigint "question_item_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_answer_id"], name: "index_assessment_answer_items_on_assessment_answer_id"
    t.index ["question_item_id"], name: "index_assessment_answer_items_on_question_item_id"
  end

  create_table "assessment_answers", force: :cascade do |t|
    t.string "uid"
    t.bigint "assessment_id", null: false
    t.bigint "assessment_result_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_id"], name: "index_assessment_answers_on_assessment_id"
    t.index ["assessment_result_id"], name: "index_assessment_answers_on_assessment_result_id"
  end

  create_table "assessment_results", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "label"
    t.bigint "assessment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_id"], name: "index_assessment_results_on_assessment_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.string "label"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_groups", force: :cascade do |t|
    t.bigint "assessment_id", null: false
    t.string "title"
    t.integer "form_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_id"], name: "index_question_groups_on_assessment_id"
  end

  create_table "question_items", force: :cascade do |t|
    t.bigint "question_group_id", null: false
    t.string "label"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_group_id"], name: "index_question_items_on_question_group_id"
  end

  add_foreign_key "assessment_answer_items", "assessment_answers"
  add_foreign_key "assessment_answer_items", "question_items"
  add_foreign_key "assessment_answers", "assessment_results"
  add_foreign_key "assessment_answers", "assessments"
  add_foreign_key "assessment_results", "assessments"
  add_foreign_key "question_groups", "assessments"
  add_foreign_key "question_items", "question_groups"
end
