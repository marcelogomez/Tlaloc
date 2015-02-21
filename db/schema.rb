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

ActiveRecord::Schema.define(version: 20150221044347) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.text     "answer",      limit: 65535
    t.boolean  "correct",     limit: 1
    t.string   "image",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "quiz_id",    limit: 4
    t.text     "question",   limit: 65535
    t.string   "image",      limit: 255
    t.float    "value",      limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "quiz_results", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "quiz_id",    limit: 4
    t.integer  "n_correct",  limit: 4
    t.float    "score",      limit: 24
    t.date     "date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tips", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.text     "content",     limit: 65535
    t.string   "image",       limit: 255
    t.boolean  "shown",       limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tutorial_contents", force: :cascade do |t|
    t.integer  "tutorial_id", limit: 4
    t.string   "name",        limit: 255
    t.string   "image",       limit: 255
    t.integer  "sequence",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tutorials", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
