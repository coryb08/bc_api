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

ActiveRecord::Schema.define(version: 20180409003909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.integer "credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professor_id"
    t.index ["professor_id"], name: "index_courses_on_professor_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.integer "mon_end"
    t.bigint "course_id"
    t.integer "start"
    t.integer "end"
    t.string "day"
    t.index ["course_id"], name: "index_meetings_on_course_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "message"
    t.boolean "unread"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "professor_id"
    t.bigint "course_id"
    t.bigint "registration_id"
    t.string "status"
    t.index ["course_id"], name: "index_notifications_on_course_id"
    t.index ["professor_id"], name: "index_notifications_on_professor_id"
    t.index ["registration_id"], name: "index_notifications_on_registration_id"
    t.index ["student_id"], name: "index_notifications_on_student_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_professors_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professor_id"
    t.string "status"
    t.bigint "user_id"
    t.index ["course_id"], name: "index_registrations_on_course_id"
    t.index ["professor_id"], name: "index_registrations_on_professor_id"
    t.index ["student_id"], name: "index_registrations_on_student_id"
    t.index ["user_id"], name: "index_registrations_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["course_id"], name: "index_schedules_on_course_id"
    t.index ["student_id"], name: "index_schedules_on_student_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "year"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "is_professor"
    t.string "first_name"
    t.string "last_name"
    t.integer "year"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "professors"
  add_foreign_key "meetings", "courses"
  add_foreign_key "notifications", "courses"
  add_foreign_key "notifications", "professors"
  add_foreign_key "notifications", "registrations"
  add_foreign_key "notifications", "students"
  add_foreign_key "notifications", "users"
  add_foreign_key "professors", "users"
  add_foreign_key "registrations", "courses"
  add_foreign_key "registrations", "professors"
  add_foreign_key "registrations", "students"
  add_foreign_key "registrations", "users"
  add_foreign_key "schedules", "courses"
  add_foreign_key "schedules", "students"
  add_foreign_key "schedules", "users"
  add_foreign_key "students", "users"
end
