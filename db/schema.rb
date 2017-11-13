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

ActiveRecord::Schema.define(version: 20171113073437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "inst_class"
    t.string "address_province"
    t.string "address_municipality"
    t.string "address_street_no"
    t.string "cong_distr_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions_tesda_courses", force: :cascade do |t|
    t.bigint "institution_id"
    t.bigint "tesda_course_id"
    t.index ["institution_id"], name: "index_institutions_tesda_courses_on_institution_id"
    t.index ["tesda_course_id"], name: "index_institutions_tesda_courses_on_tesda_course_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "t_fname"
    t.string "t_mname"
    t.string "t_lnamt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers_tesda_courses", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "tesda_course_id"
    t.index ["teacher_id"], name: "index_teachers_tesda_courses_on_teacher_id"
    t.index ["tesda_course_id"], name: "index_teachers_tesda_courses_on_tesda_course_id"
  end

  create_table "tesda_course_sectors", force: :cascade do |t|
    t.string "tcs_name"
    t.string "tcs_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tesda_courses", force: :cascade do |t|
    t.string "tc_name"
    t.integer "tc_hrs_dur"
    t.bigint "tesda_course_sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tesda_course_sector_id"], name: "index_tesda_courses_on_tesda_course_sector_id"
  end

  add_foreign_key "tesda_courses", "tesda_course_sectors"
end
