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

ActiveRecord::Schema.define(version: 20171116084720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_records", force: :cascade do |t|
    t.bigint "institution_id"
    t.date "release_date"
    t.string "acadyr_termno"
    t.integer "stud_count"
    t.integer "enrolled"
    t.integer "graduated"
    t.float "cost_per_stud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_data_records_on_institution_id"
  end

  create_table "faculty_headcounts", force: :cascade do |t|
    t.bigint "institution_id"
    t.date "release_date"
    t.string "acadyr_termno"
    t.integer "bacc"
    t.integer "ms_ma"
    t.integer "phd"
    t.string "maintainer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_faculty_headcounts_on_institution_id"
  end

  create_table "inst_contacts", force: :cascade do |t|
    t.bigint "institution_id"
    t.string "contact_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_inst_contacts_on_institution_id"
  end

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

  create_table "institutions_inst_contacts", force: :cascade do |t|
    t.bigint "institution_id"
    t.bigint "inst_contact_id"
    t.index ["inst_contact_id"], name: "index_institutions_inst_contacts_on_inst_contact_id"
    t.index ["institution_id"], name: "index_institutions_inst_contacts_on_institution_id"
  end

  create_table "institutions_tesda_courses", force: :cascade do |t|
    t.bigint "institution_id"
    t.bigint "tesda_course_id"
    t.index ["institution_id"], name: "index_institutions_tesda_courses_on_institution_id"
    t.index ["tesda_course_id"], name: "index_institutions_tesda_courses_on_tesda_course_id"
  end

  create_table "principals", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "p_name"
    t.index ["email"], name: "index_principals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_principals_on_reset_password_token", unique: true
  end

  create_table "regional_data_records", force: :cascade do |t|
    t.bigint "region_id"
    t.date "release_date"
    t.integer "acadyr"
    t.float "cost_per_stud"
    t.integer "private_nonsec"
    t.integer "private_sec"
    t.integer "special_HEI"
    t.integer "other_govt_schools"
    t.integer "ched_supervised_institution"
    t.integer "local_colleges_and_uni"
    t.string "SUCs_main"
    t.string "integer"
    t.integer "SUCs_sat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_regional_data_records_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "region_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "head_count"
    t.integer "year"
    t.integer "grade_level"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "principal_id"
    t.index ["institution_id"], name: "index_sections_on_institution_id"
    t.index ["principal_id"], name: "index_sections_on_principal_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "t_fname"
    t.string "t_mname"
    t.string "t_lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "principal_id"
    t.index ["principal_id"], name: "index_teachers_on_principal_id"
  end

  create_table "teachers_sections", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "section_id"
    t.index ["section_id"], name: "index_teachers_sections_on_section_id"
    t.index ["teacher_id"], name: "index_teachers_sections_on_teacher_id"
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
    t.bigint "principal_id"
    t.index ["principal_id"], name: "index_tesda_course_sectors_on_principal_id"
  end

  create_table "tesda_courses", force: :cascade do |t|
    t.string "tc_name"
    t.integer "tc_hrs_dur"
    t.bigint "tesda_course_sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "principal_id"
    t.index ["principal_id"], name: "index_tesda_courses_on_principal_id"
    t.index ["tesda_course_sector_id"], name: "index_tesda_courses_on_tesda_course_sector_id"
  end

  create_table "tuitions", force: :cascade do |t|
    t.bigint "institution_id"
    t.date "release_date"
    t.string "acadyr_termno"
    t.float "bacc"
    t.float "ms_ma"
    t.float "phd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_tuitions_on_institution_id"
  end

  add_foreign_key "data_records", "institutions"
  add_foreign_key "faculty_headcounts", "institutions"
  add_foreign_key "inst_contacts", "institutions"
  add_foreign_key "regional_data_records", "regions"
  add_foreign_key "sections", "institutions"
  add_foreign_key "sections", "principals"
  add_foreign_key "teachers", "principals"
  add_foreign_key "tesda_course_sectors", "principals"
  add_foreign_key "tesda_courses", "principals"
  add_foreign_key "tesda_courses", "tesda_course_sectors"
  add_foreign_key "tuitions", "institutions"
end
