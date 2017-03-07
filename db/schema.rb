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

ActiveRecord::Schema.define(version: 20170307205337) do

  create_table "aoii_income_statements", force: :cascade do |t|
    t.integer  "location_id"
    t.decimal  "contract_deposit",                precision: 8, scale: 2
    t.decimal  "contract_fees_other",             precision: 8, scale: 2
    t.decimal  "development_fees",                precision: 8, scale: 2
    t.decimal  "development_fees_other",          precision: 8, scale: 2
    t.decimal  "billhighway_income_posting",      precision: 8, scale: 2
    t.decimal  "building_and_furnishing_fees",    precision: 8, scale: 2
    t.decimal  "chapter_surplus",                 precision: 8, scale: 2
    t.decimal  "corporation_dues",                precision: 8, scale: 2
    t.decimal  "damage_deposit",                  precision: 8, scale: 2
    t.decimal  "damage_income",                   precision: 8, scale: 2
    t.decimal  "empty_bed_fee_corp_board",        precision: 8, scale: 2
    t.decimal  "fundraising_other_than_founda",   precision: 8, scale: 2
    t.decimal  "grant_from_properties",           precision: 8, scale: 2
    t.decimal  "interest_income",                 precision: 8, scale: 2
    t.decimal  "late_payment_fees",               precision: 8, scale: 2
    t.decimal  "late_payment_fees_corp_board",    precision: 8, scale: 2
    t.decimal  "member_discount",                 precision: 8, scale: 2
    t.decimal  "miscellaneous_income_corp_board", precision: 8, scale: 2
    t.decimal  "other_income",                    precision: 8, scale: 2
    t.decimal  "parking_fees",                    precision: 8, scale: 2
    t.decimal  "recruitment_week_rent",           precision: 8, scale: 2
    t.decimal  "returned_check_fee",              precision: 8, scale: 2
    t.decimal  "vending_machine_income",          precision: 8, scale: 2
    t.decimal  "other_income_other",              precision: 8, scale: 2
    t.decimal  "room_and_board",                  precision: 8, scale: 2
    t.decimal  "room_and_board_other",            precision: 8, scale: 2
    t.decimal  "accra",                           precision: 8, scale: 2
    t.decimal  "accra_other",                     precision: 8, scale: 2
    t.decimal  "annual_cleaning",                 precision: 8, scale: 2
    t.decimal  "cleaning_service",                precision: 8, scale: 2
    t.decimal  "cleaning_supplies_cleaners",      precision: 8, scale: 2
    t.decimal  "cleaning_other",                  precision: 8, scale: 2
    t.decimal  "convention_li_expenditures",      precision: 8, scale: 2
    t.decimal  "convention_li_other",             precision: 8, scale: 2
    t.decimal  "depreciation_amortization_exp",   precision: 8, scale: 2
    t.decimal  "depreciation_exp_other",          precision: 8, scale: 2
    t.decimal  "food",                            precision: 8, scale: 2
    t.decimal  "food_other",                      precision: 8, scale: 2
    t.decimal  "furniture_lease",                 precision: 8, scale: 2
    t.decimal  "house",                           precision: 8, scale: 2
    t.decimal  "housing_expense_do_not_use_",     precision: 8, scale: 2
    t.decimal  "kitchen_housing",                 precision: 8, scale: 2
    t.decimal  "laundry_and_linens",              precision: 8, scale: 2
    t.decimal  "wish_list",                       precision: 8, scale: 2
    t.decimal  "housing_expense_other",           precision: 8, scale: 2
    t.decimal  "income_tax_expense",              precision: 8, scale: 2
    t.decimal  "insurance_and_taxes",             precision: 8, scale: 2
    t.decimal  "property_insurance",              precision: 8, scale: 2
    t.decimal  "property_taxes",                  precision: 8, scale: 2
    t.decimal  "workers_comp_insurance",          precision: 8, scale: 2
    t.decimal  "insurance_and_taxes_other",       precision: 8, scale: 2
    t.decimal  "interest_expense",                precision: 8, scale: 2
    t.decimal  "rent",                            precision: 8, scale: 2
    t.decimal  "interest_expense_other",          precision: 8, scale: 2
    t.decimal  "grounds",                         precision: 8, scale: 2
    t.decimal  "landscaping_other",               precision: 8, scale: 2
    t.decimal  "landscaping_other2",              precision: 8, scale: 2
    t.decimal  "building_expense",                precision: 8, scale: 2
    t.decimal  "equipment",                       precision: 8, scale: 2
    t.decimal  "furniture",                       precision: 8, scale: 2
    t.decimal  "grounds_do_not_use",              precision: 8, scale: 2
    t.decimal  "inspections",                     precision: 8, scale: 2
    t.decimal  "internet_maintenance",            precision: 8, scale: 2
    t.decimal  "maintenance_do_not_use_",         precision: 8, scale: 2
    t.decimal  "maintenance_contracts",           precision: 8, scale: 2
    t.decimal  "pest_control",                    precision: 8, scale: 2
    t.decimal  "repairs_and_maintenance",         precision: 8, scale: 2
    t.decimal  "maintenance_other",               precision: 8, scale: 2
    t.decimal  "bad_debt_expense_corp_board",     precision: 8, scale: 2
    t.decimal  "billhighway_expense_posting",     precision: 8, scale: 2
    t.decimal  "building_expense_do_not_use_",    precision: 8, scale: 2
    t.decimal  "manual_transfer_to_from_chapter", precision: 8, scale: 2
    t.decimal  "miscellaneous_corp_board",        precision: 8, scale: 2
    t.decimal  "miscellaneous_expense",           precision: 8, scale: 2
    t.decimal  "officer_previously_collected_fu", precision: 8, scale: 2
    t.decimal  "other",                           precision: 8, scale: 2
    t.decimal  "ritual_supplies",                 precision: 8, scale: 2
    t.decimal  "scholarships",                    precision: 8, scale: 2
    t.decimal  "security",                        precision: 8, scale: 2
    t.decimal  "other_expense_other",             precision: 8, scale: 2
    t.decimal  "cooks",                           precision: 8, scale: 2
    t.decimal  "employee_insurance_expense",      precision: 8, scale: 2
    t.decimal  "futa",                            precision: 8, scale: 2
    t.decimal  "handyman_other",                  precision: 8, scale: 2
    t.decimal  "hd_car_allowance",                precision: 8, scale: 2
    t.decimal  "house_director_payroll",          precision: 8, scale: 2
    t.decimal  "house_director_phone_allowance",  precision: 8, scale: 2
    t.decimal  "houseboys_waiters",               precision: 8, scale: 2
    t.decimal  "housekeeper",                     precision: 8, scale: 2
    t.decimal  "medicare",                        precision: 8, scale: 2
    t.decimal  "payroll_service_expense",         precision: 8, scale: 2
    t.decimal  "payroll_taxes",                   precision: 8, scale: 2
    t.decimal  "payroll_taxes_other",             precision: 8, scale: 2
    t.decimal  "retirement_contribution",         precision: 8, scale: 2
    t.decimal  "social_security",                 precision: 8, scale: 2
    t.decimal  "suta",                            precision: 8, scale: 2
    t.decimal  "workers_comp_insurance_payroll",  precision: 8, scale: 2
    t.decimal  "payroll_expense_other",           precision: 8, scale: 2
    t.decimal  "accounting_billhighway_fees_mem", precision: 8, scale: 2
    t.decimal  "administrative",                  precision: 8, scale: 2
    t.decimal  "bank_charges_credit_card_fees",   precision: 8, scale: 2
    t.decimal  "legal_fees",                      precision: 8, scale: 2
    t.decimal  "licenses_and_permits",            precision: 8, scale: 2
    t.decimal  "postage_expense",                 precision: 8, scale: 2
    t.decimal  "professional_fees",               precision: 8, scale: 2
    t.decimal  "publications_and_printing",       precision: 8, scale: 2
    t.decimal  "professional_and_admin_other",    precision: 8, scale: 2
    t.decimal  "storage_unit",                    precision: 8, scale: 2
    t.decimal  "rent_other",                      precision: 8, scale: 2
    t.decimal  "cleaning_supplies_house",         precision: 8, scale: 2
    t.decimal  "kitchen_supplies",                precision: 8, scale: 2
    t.decimal  "supplies",                        precision: 8, scale: 2
    t.decimal  "supplies_other",                  precision: 8, scale: 2
    t.decimal  "travel",                          precision: 8, scale: 2
    t.decimal  "travel_other",                    precision: 8, scale: 2
    t.decimal  "alarm_system_monthly_monitoring", precision: 8, scale: 2
    t.decimal  "cable",                           precision: 8, scale: 2
    t.decimal  "circuit_and_alarm",               precision: 8, scale: 2
    t.decimal  "electricity",                     precision: 8, scale: 2
    t.decimal  "fax_line",                        precision: 8, scale: 2
    t.decimal  "gas",                             precision: 8, scale: 2
    t.decimal  "house_director_phone_do_not_use", precision: 8, scale: 2
    t.decimal  "house_phone",                     precision: 8, scale: 2
    t.decimal  "internet",                        precision: 8, scale: 2
    t.decimal  "kitchen_telephone",               precision: 8, scale: 2
    t.decimal  "phone_and_fax",                   precision: 8, scale: 2
    t.decimal  "postage_expense_do_not_use",      precision: 8, scale: 2
    t.decimal  "recycling",                       precision: 8, scale: 2
    t.decimal  "room_phones",                     precision: 8, scale: 2
    t.decimal  "telephone",                       precision: 8, scale: 2
    t.decimal  "trash_removal",                   precision: 8, scale: 2
    t.decimal  "utilities_do_not_use",            precision: 8, scale: 2
    t.decimal  "water_and_sewer",                 precision: 8, scale: 2
    t.decimal  "utilities_other",                 precision: 8, scale: 2
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.decimal  "g_l_on_disposal_of_asset",        precision: 8, scale: 2
    t.decimal  "g_l_on_fair_value_int_swap",      precision: 8, scale: 2
    t.decimal  "gain_on_sale_of_property",        precision: 8, scale: 2
    t.decimal  "uncategorized_income",            precision: 8, scale: 2
    t.decimal  "cost_of_goods_sold",              precision: 8, scale: 2
    t.decimal  "bad_debt_exp_do_not_use_",        precision: 8, scale: 2
    t.decimal  "bank_fees",                       precision: 8, scale: 2
    t.decimal  "li_convention_exp_do_not_use",    precision: 8, scale: 2
    t.decimal  "payroll_expenses_inactive",       precision: 8, scale: 2
    t.decimal  "reconciliation_discrepancies",    precision: 8, scale: 2
    t.decimal  "z_contra_account",                precision: 8, scale: 2
  end

  create_table "information", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "role"
    t.string   "fname"
    t.string   "lname"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "contact"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "contact"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
