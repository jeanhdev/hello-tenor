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

ActiveRecord::Schema.define(version: 2019_09_05_103701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "legal_status"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "logo"
  end

  create_table "case_docs", force: :cascade do |t|
    t.boolean "accepted"
    t.bigint "document_id"
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_case_docs_on_case_id"
    t.index ["document_id"], name: "index_case_docs_on_document_id"
  end

  create_table "cases", force: :cascade do |t|
    t.string "title"
    t.string "case_number"
    t.string "practice_area"
    t.text "description"
    t.date "start_date"
    t.integer "duration"
    t.string "status", default: "En attente"
    t.float "fees"
    t.bigint "user_id"
    t.bigint "lawyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "contacted", default: false, null: false
    t.index ["lawyer_id"], name: "index_cases_on_lawyer_id"
    t.index ["user_id"], name: "index_cases_on_user_id"
  end

  create_table "clerks", force: :cascade do |t|
    t.string "firs_name"
    t.string "last_name"
    t.string "email"
    t.bigint "jurisdiction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.index ["jurisdiction_id"], name: "index_clerks_on_jurisdiction_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "storage"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.text "description"
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["case_id"], name: "index_events_on_case_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "status"
    t.decimal "vat"
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_invoices_on_case_id"
  end

  create_table "jurisdictions", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "law_firms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.string "firm_speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
  end

  create_table "lawyers", force: :cascade do |t|
    t.string "job"
    t.string "speciality"
    t.bigint "law_firm_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["law_firm_id"], name: "index_lawyers_on_law_firm_id"
    t.index ["user_id"], name: "index_lawyers_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "case_id"
    t.string "receiver_type"
    t.bigint "receiver_id"
    t.string "content"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_notifications_on_case_id"
    t.index ["receiver_type", "receiver_id"], name: "index_notifications_on_receiver_type_and_receiver_id"
  end

  create_table "opponents", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "procedure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["procedure_id"], name: "index_opponents_on_procedure_id"
  end

  create_table "procedure_docs", force: :cascade do |t|
    t.boolean "accepted"
    t.bigint "procedure_id"
    t.bigint "case_doc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_doc_id"], name: "index_procedure_docs_on_case_doc_id"
    t.index ["procedure_id"], name: "index_procedure_docs_on_procedure_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.string "name"
    t.text "grievance"
    t.string "legal_action"
    t.datetime "step"
    t.integer "deadline"
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.integer "number_of_documents"
    t.float "cost"
    t.bigint "case_id"
    t.bigint "jurisdiction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_procedures_on_case_id"
    t.index ["jurisdiction_id"], name: "index_procedures_on_jurisdiction_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "business_id"
    t.index ["business_id"], name: "index_users_on_business_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "case_docs", "cases"
  add_foreign_key "case_docs", "documents"
  add_foreign_key "cases", "lawyers"
  add_foreign_key "cases", "users"
  add_foreign_key "clerks", "jurisdictions"
  add_foreign_key "documents", "users"
  add_foreign_key "events", "cases"
  add_foreign_key "invoices", "cases"
  add_foreign_key "lawyers", "law_firms"
  add_foreign_key "lawyers", "users"
  add_foreign_key "notifications", "cases"
  add_foreign_key "opponents", "procedures"
  add_foreign_key "procedure_docs", "case_docs"
  add_foreign_key "procedure_docs", "procedures"
  add_foreign_key "procedures", "cases"
  add_foreign_key "procedures", "jurisdictions"
  add_foreign_key "users", "businesses"
end
