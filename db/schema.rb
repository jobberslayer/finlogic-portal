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

ActiveRecord::Schema.define(version: 20170308181946) do

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

  create_table "income_statements", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "key1"
    t.decimal  "amount1",     precision: 10, scale: 2
    t.integer  "col1"
    t.string   "key2"
    t.decimal  "amount2",     precision: 10, scale: 2
    t.integer  "col2"
    t.string   "key3"
    t.decimal  "amount3",     precision: 10, scale: 2
    t.integer  "col3"
    t.string   "key4"
    t.decimal  "amount4",     precision: 10, scale: 2
    t.integer  "col4"
    t.string   "key5"
    t.decimal  "amount5",     precision: 10, scale: 2
    t.integer  "col5"
    t.string   "key6"
    t.decimal  "amount6",     precision: 10, scale: 2
    t.integer  "col6"
    t.string   "key7"
    t.decimal  "amount7",     precision: 10, scale: 2
    t.integer  "col7"
    t.string   "key8"
    t.decimal  "amount8",     precision: 10, scale: 2
    t.integer  "col8"
    t.string   "key9"
    t.decimal  "amount9",     precision: 10, scale: 2
    t.integer  "col9"
    t.string   "key10"
    t.decimal  "amount10",    precision: 10, scale: 2
    t.integer  "col10"
    t.string   "key11"
    t.decimal  "amount11",    precision: 10, scale: 2
    t.integer  "col11"
    t.string   "key12"
    t.decimal  "amount12",    precision: 10, scale: 2
    t.integer  "col12"
    t.string   "key13"
    t.decimal  "amount13",    precision: 10, scale: 2
    t.integer  "col13"
    t.string   "key14"
    t.decimal  "amount14",    precision: 10, scale: 2
    t.integer  "col14"
    t.string   "key15"
    t.decimal  "amount15",    precision: 10, scale: 2
    t.integer  "col15"
    t.string   "key16"
    t.decimal  "amount16",    precision: 10, scale: 2
    t.integer  "col16"
    t.string   "key17"
    t.decimal  "amount17",    precision: 10, scale: 2
    t.integer  "col17"
    t.string   "key18"
    t.decimal  "amount18",    precision: 10, scale: 2
    t.integer  "col18"
    t.string   "key19"
    t.decimal  "amount19",    precision: 10, scale: 2
    t.integer  "col19"
    t.string   "key20"
    t.decimal  "amount20",    precision: 10, scale: 2
    t.integer  "col20"
    t.string   "key21"
    t.decimal  "amount21",    precision: 10, scale: 2
    t.integer  "col21"
    t.string   "key22"
    t.decimal  "amount22",    precision: 10, scale: 2
    t.integer  "col22"
    t.string   "key23"
    t.decimal  "amount23",    precision: 10, scale: 2
    t.integer  "col23"
    t.string   "key24"
    t.decimal  "amount24",    precision: 10, scale: 2
    t.integer  "col24"
    t.string   "key25"
    t.decimal  "amount25",    precision: 10, scale: 2
    t.integer  "col25"
    t.string   "key26"
    t.decimal  "amount26",    precision: 10, scale: 2
    t.integer  "col26"
    t.string   "key27"
    t.decimal  "amount27",    precision: 10, scale: 2
    t.integer  "col27"
    t.string   "key28"
    t.decimal  "amount28",    precision: 10, scale: 2
    t.integer  "col28"
    t.string   "key29"
    t.decimal  "amount29",    precision: 10, scale: 2
    t.integer  "col29"
    t.string   "key30"
    t.decimal  "amount30",    precision: 10, scale: 2
    t.integer  "col30"
    t.string   "key31"
    t.decimal  "amount31",    precision: 10, scale: 2
    t.integer  "col31"
    t.string   "key32"
    t.decimal  "amount32",    precision: 10, scale: 2
    t.integer  "col32"
    t.string   "key33"
    t.decimal  "amount33",    precision: 10, scale: 2
    t.integer  "col33"
    t.string   "key34"
    t.decimal  "amount34",    precision: 10, scale: 2
    t.integer  "col34"
    t.string   "key35"
    t.decimal  "amount35",    precision: 10, scale: 2
    t.integer  "col35"
    t.string   "key36"
    t.decimal  "amount36",    precision: 10, scale: 2
    t.integer  "col36"
    t.string   "key37"
    t.decimal  "amount37",    precision: 10, scale: 2
    t.integer  "col37"
    t.string   "key38"
    t.decimal  "amount38",    precision: 10, scale: 2
    t.integer  "col38"
    t.string   "key39"
    t.decimal  "amount39",    precision: 10, scale: 2
    t.integer  "col39"
    t.string   "key40"
    t.decimal  "amount40",    precision: 10, scale: 2
    t.integer  "col40"
    t.string   "key41"
    t.decimal  "amount41",    precision: 10, scale: 2
    t.integer  "col41"
    t.string   "key42"
    t.decimal  "amount42",    precision: 10, scale: 2
    t.integer  "col42"
    t.string   "key43"
    t.decimal  "amount43",    precision: 10, scale: 2
    t.integer  "col43"
    t.string   "key44"
    t.decimal  "amount44",    precision: 10, scale: 2
    t.integer  "col44"
    t.string   "key45"
    t.decimal  "amount45",    precision: 10, scale: 2
    t.integer  "col45"
    t.string   "key46"
    t.decimal  "amount46",    precision: 10, scale: 2
    t.integer  "col46"
    t.string   "key47"
    t.decimal  "amount47",    precision: 10, scale: 2
    t.integer  "col47"
    t.string   "key48"
    t.decimal  "amount48",    precision: 10, scale: 2
    t.integer  "col48"
    t.string   "key49"
    t.decimal  "amount49",    precision: 10, scale: 2
    t.integer  "col49"
    t.string   "key50"
    t.decimal  "amount50",    precision: 10, scale: 2
    t.integer  "col50"
    t.string   "key51"
    t.decimal  "amount51",    precision: 10, scale: 2
    t.integer  "col51"
    t.string   "key52"
    t.decimal  "amount52",    precision: 10, scale: 2
    t.integer  "col52"
    t.string   "key53"
    t.decimal  "amount53",    precision: 10, scale: 2
    t.integer  "col53"
    t.string   "key54"
    t.decimal  "amount54",    precision: 10, scale: 2
    t.integer  "col54"
    t.string   "key55"
    t.decimal  "amount55",    precision: 10, scale: 2
    t.integer  "col55"
    t.string   "key56"
    t.decimal  "amount56",    precision: 10, scale: 2
    t.integer  "col56"
    t.string   "key57"
    t.decimal  "amount57",    precision: 10, scale: 2
    t.integer  "col57"
    t.string   "key58"
    t.decimal  "amount58",    precision: 10, scale: 2
    t.integer  "col58"
    t.string   "key59"
    t.decimal  "amount59",    precision: 10, scale: 2
    t.integer  "col59"
    t.string   "key60"
    t.decimal  "amount60",    precision: 10, scale: 2
    t.integer  "col60"
    t.string   "key61"
    t.decimal  "amount61",    precision: 10, scale: 2
    t.integer  "col61"
    t.string   "key62"
    t.decimal  "amount62",    precision: 10, scale: 2
    t.integer  "col62"
    t.string   "key63"
    t.decimal  "amount63",    precision: 10, scale: 2
    t.integer  "col63"
    t.string   "key64"
    t.decimal  "amount64",    precision: 10, scale: 2
    t.integer  "col64"
    t.string   "key65"
    t.decimal  "amount65",    precision: 10, scale: 2
    t.integer  "col65"
    t.string   "key66"
    t.decimal  "amount66",    precision: 10, scale: 2
    t.integer  "col66"
    t.string   "key67"
    t.decimal  "amount67",    precision: 10, scale: 2
    t.integer  "col67"
    t.string   "key68"
    t.decimal  "amount68",    precision: 10, scale: 2
    t.integer  "col68"
    t.string   "key69"
    t.decimal  "amount69",    precision: 10, scale: 2
    t.integer  "col69"
    t.string   "key70"
    t.decimal  "amount70",    precision: 10, scale: 2
    t.integer  "col70"
    t.string   "key71"
    t.decimal  "amount71",    precision: 10, scale: 2
    t.integer  "col71"
    t.string   "key72"
    t.decimal  "amount72",    precision: 10, scale: 2
    t.integer  "col72"
    t.string   "key73"
    t.decimal  "amount73",    precision: 10, scale: 2
    t.integer  "col73"
    t.string   "key74"
    t.decimal  "amount74",    precision: 10, scale: 2
    t.integer  "col74"
    t.string   "key75"
    t.decimal  "amount75",    precision: 10, scale: 2
    t.integer  "col75"
    t.string   "key76"
    t.decimal  "amount76",    precision: 10, scale: 2
    t.integer  "col76"
    t.string   "key77"
    t.decimal  "amount77",    precision: 10, scale: 2
    t.integer  "col77"
    t.string   "key78"
    t.decimal  "amount78",    precision: 10, scale: 2
    t.integer  "col78"
    t.string   "key79"
    t.decimal  "amount79",    precision: 10, scale: 2
    t.integer  "col79"
    t.string   "key80"
    t.decimal  "amount80",    precision: 10, scale: 2
    t.integer  "col80"
    t.string   "key81"
    t.decimal  "amount81",    precision: 10, scale: 2
    t.integer  "col81"
    t.string   "key82"
    t.decimal  "amount82",    precision: 10, scale: 2
    t.integer  "col82"
    t.string   "key83"
    t.decimal  "amount83",    precision: 10, scale: 2
    t.integer  "col83"
    t.string   "key84"
    t.decimal  "amount84",    precision: 10, scale: 2
    t.integer  "col84"
    t.string   "key85"
    t.decimal  "amount85",    precision: 10, scale: 2
    t.integer  "col85"
    t.string   "key86"
    t.decimal  "amount86",    precision: 10, scale: 2
    t.integer  "col86"
    t.string   "key87"
    t.decimal  "amount87",    precision: 10, scale: 2
    t.integer  "col87"
    t.string   "key88"
    t.decimal  "amount88",    precision: 10, scale: 2
    t.integer  "col88"
    t.string   "key89"
    t.decimal  "amount89",    precision: 10, scale: 2
    t.integer  "col89"
    t.string   "key90"
    t.decimal  "amount90",    precision: 10, scale: 2
    t.integer  "col90"
    t.string   "key91"
    t.decimal  "amount91",    precision: 10, scale: 2
    t.integer  "col91"
    t.string   "key92"
    t.decimal  "amount92",    precision: 10, scale: 2
    t.integer  "col92"
    t.string   "key93"
    t.decimal  "amount93",    precision: 10, scale: 2
    t.integer  "col93"
    t.string   "key94"
    t.decimal  "amount94",    precision: 10, scale: 2
    t.integer  "col94"
    t.string   "key95"
    t.decimal  "amount95",    precision: 10, scale: 2
    t.integer  "col95"
    t.string   "key96"
    t.decimal  "amount96",    precision: 10, scale: 2
    t.integer  "col96"
    t.string   "key97"
    t.decimal  "amount97",    precision: 10, scale: 2
    t.integer  "col97"
    t.string   "key98"
    t.decimal  "amount98",    precision: 10, scale: 2
    t.integer  "col98"
    t.string   "key99"
    t.decimal  "amount99",    precision: 10, scale: 2
    t.integer  "col99"
    t.string   "key100"
    t.decimal  "amount100",   precision: 10, scale: 2
    t.integer  "col100"
    t.string   "key101"
    t.decimal  "amount101",   precision: 10, scale: 2
    t.integer  "col101"
    t.string   "key102"
    t.decimal  "amount102",   precision: 10, scale: 2
    t.integer  "col102"
    t.string   "key103"
    t.decimal  "amount103",   precision: 10, scale: 2
    t.integer  "col103"
    t.string   "key104"
    t.decimal  "amount104",   precision: 10, scale: 2
    t.integer  "col104"
    t.string   "key105"
    t.decimal  "amount105",   precision: 10, scale: 2
    t.integer  "col105"
    t.string   "key106"
    t.decimal  "amount106",   precision: 10, scale: 2
    t.integer  "col106"
    t.string   "key107"
    t.decimal  "amount107",   precision: 10, scale: 2
    t.integer  "col107"
    t.string   "key108"
    t.decimal  "amount108",   precision: 10, scale: 2
    t.integer  "col108"
    t.string   "key109"
    t.decimal  "amount109",   precision: 10, scale: 2
    t.integer  "col109"
    t.string   "key110"
    t.decimal  "amount110",   precision: 10, scale: 2
    t.integer  "col110"
    t.string   "key111"
    t.decimal  "amount111",   precision: 10, scale: 2
    t.integer  "col111"
    t.string   "key112"
    t.decimal  "amount112",   precision: 10, scale: 2
    t.integer  "col112"
    t.string   "key113"
    t.decimal  "amount113",   precision: 10, scale: 2
    t.integer  "col113"
    t.string   "key114"
    t.decimal  "amount114",   precision: 10, scale: 2
    t.integer  "col114"
    t.string   "key115"
    t.decimal  "amount115",   precision: 10, scale: 2
    t.integer  "col115"
    t.string   "key116"
    t.decimal  "amount116",   precision: 10, scale: 2
    t.integer  "col116"
    t.string   "key117"
    t.decimal  "amount117",   precision: 10, scale: 2
    t.integer  "col117"
    t.string   "key118"
    t.decimal  "amount118",   precision: 10, scale: 2
    t.integer  "col118"
    t.string   "key119"
    t.decimal  "amount119",   precision: 10, scale: 2
    t.integer  "col119"
    t.string   "key120"
    t.decimal  "amount120",   precision: 10, scale: 2
    t.integer  "col120"
    t.string   "key121"
    t.decimal  "amount121",   precision: 10, scale: 2
    t.integer  "col121"
    t.string   "key122"
    t.decimal  "amount122",   precision: 10, scale: 2
    t.integer  "col122"
    t.string   "key123"
    t.decimal  "amount123",   precision: 10, scale: 2
    t.integer  "col123"
    t.string   "key124"
    t.decimal  "amount124",   precision: 10, scale: 2
    t.integer  "col124"
    t.string   "key125"
    t.decimal  "amount125",   precision: 10, scale: 2
    t.integer  "col125"
    t.string   "key126"
    t.decimal  "amount126",   precision: 10, scale: 2
    t.integer  "col126"
    t.string   "key127"
    t.decimal  "amount127",   precision: 10, scale: 2
    t.integer  "col127"
    t.string   "key128"
    t.decimal  "amount128",   precision: 10, scale: 2
    t.integer  "col128"
    t.string   "key129"
    t.decimal  "amount129",   precision: 10, scale: 2
    t.integer  "col129"
    t.string   "key130"
    t.decimal  "amount130",   precision: 10, scale: 2
    t.integer  "col130"
    t.string   "key131"
    t.decimal  "amount131",   precision: 10, scale: 2
    t.integer  "col131"
    t.string   "key132"
    t.decimal  "amount132",   precision: 10, scale: 2
    t.integer  "col132"
    t.string   "key133"
    t.decimal  "amount133",   precision: 10, scale: 2
    t.integer  "col133"
    t.string   "key134"
    t.decimal  "amount134",   precision: 10, scale: 2
    t.integer  "col134"
    t.string   "key135"
    t.decimal  "amount135",   precision: 10, scale: 2
    t.integer  "col135"
    t.string   "key136"
    t.decimal  "amount136",   precision: 10, scale: 2
    t.integer  "col136"
    t.string   "key137"
    t.decimal  "amount137",   precision: 10, scale: 2
    t.integer  "col137"
    t.string   "key138"
    t.decimal  "amount138",   precision: 10, scale: 2
    t.integer  "col138"
    t.string   "key139"
    t.decimal  "amount139",   precision: 10, scale: 2
    t.integer  "col139"
    t.string   "key140"
    t.decimal  "amount140",   precision: 10, scale: 2
    t.integer  "col140"
    t.string   "key141"
    t.decimal  "amount141",   precision: 10, scale: 2
    t.integer  "col141"
    t.string   "key142"
    t.decimal  "amount142",   precision: 10, scale: 2
    t.integer  "col142"
    t.string   "key143"
    t.decimal  "amount143",   precision: 10, scale: 2
    t.integer  "col143"
    t.string   "key144"
    t.decimal  "amount144",   precision: 10, scale: 2
    t.integer  "col144"
    t.string   "key145"
    t.decimal  "amount145",   precision: 10, scale: 2
    t.integer  "col145"
    t.string   "key146"
    t.decimal  "amount146",   precision: 10, scale: 2
    t.integer  "col146"
    t.string   "key147"
    t.decimal  "amount147",   precision: 10, scale: 2
    t.integer  "col147"
    t.string   "key148"
    t.decimal  "amount148",   precision: 10, scale: 2
    t.integer  "col148"
    t.string   "key149"
    t.decimal  "amount149",   precision: 10, scale: 2
    t.integer  "col149"
    t.string   "key150"
    t.decimal  "amount150",   precision: 10, scale: 2
    t.integer  "col150"
    t.string   "key151"
    t.decimal  "amount151",   precision: 10, scale: 2
    t.integer  "col151"
    t.string   "key152"
    t.decimal  "amount152",   precision: 10, scale: 2
    t.integer  "col152"
    t.string   "key153"
    t.decimal  "amount153",   precision: 10, scale: 2
    t.integer  "col153"
    t.string   "key154"
    t.decimal  "amount154",   precision: 10, scale: 2
    t.integer  "col154"
    t.string   "key155"
    t.decimal  "amount155",   precision: 10, scale: 2
    t.integer  "col155"
    t.string   "key156"
    t.decimal  "amount156",   precision: 10, scale: 2
    t.integer  "col156"
    t.string   "key157"
    t.decimal  "amount157",   precision: 10, scale: 2
    t.integer  "col157"
    t.string   "key158"
    t.decimal  "amount158",   precision: 10, scale: 2
    t.integer  "col158"
    t.string   "key159"
    t.decimal  "amount159",   precision: 10, scale: 2
    t.integer  "col159"
    t.string   "key160"
    t.decimal  "amount160",   precision: 10, scale: 2
    t.integer  "col160"
    t.string   "key161"
    t.decimal  "amount161",   precision: 10, scale: 2
    t.integer  "col161"
    t.string   "key162"
    t.decimal  "amount162",   precision: 10, scale: 2
    t.integer  "col162"
    t.string   "key163"
    t.decimal  "amount163",   precision: 10, scale: 2
    t.integer  "col163"
    t.string   "key164"
    t.decimal  "amount164",   precision: 10, scale: 2
    t.integer  "col164"
    t.string   "key165"
    t.decimal  "amount165",   precision: 10, scale: 2
    t.integer  "col165"
    t.string   "key166"
    t.decimal  "amount166",   precision: 10, scale: 2
    t.integer  "col166"
    t.string   "key167"
    t.decimal  "amount167",   precision: 10, scale: 2
    t.integer  "col167"
    t.string   "key168"
    t.decimal  "amount168",   precision: 10, scale: 2
    t.integer  "col168"
    t.string   "key169"
    t.decimal  "amount169",   precision: 10, scale: 2
    t.integer  "col169"
    t.string   "key170"
    t.decimal  "amount170",   precision: 10, scale: 2
    t.integer  "col170"
    t.string   "key171"
    t.decimal  "amount171",   precision: 10, scale: 2
    t.integer  "col171"
    t.string   "key172"
    t.decimal  "amount172",   precision: 10, scale: 2
    t.integer  "col172"
    t.string   "key173"
    t.decimal  "amount173",   precision: 10, scale: 2
    t.integer  "col173"
    t.string   "key174"
    t.decimal  "amount174",   precision: 10, scale: 2
    t.integer  "col174"
    t.string   "key175"
    t.decimal  "amount175",   precision: 10, scale: 2
    t.integer  "col175"
    t.string   "key176"
    t.decimal  "amount176",   precision: 10, scale: 2
    t.integer  "col176"
    t.string   "key177"
    t.decimal  "amount177",   precision: 10, scale: 2
    t.integer  "col177"
    t.string   "key178"
    t.decimal  "amount178",   precision: 10, scale: 2
    t.integer  "col178"
    t.string   "key179"
    t.decimal  "amount179",   precision: 10, scale: 2
    t.integer  "col179"
    t.string   "key180"
    t.decimal  "amount180",   precision: 10, scale: 2
    t.integer  "col180"
    t.string   "key181"
    t.decimal  "amount181",   precision: 10, scale: 2
    t.integer  "col181"
    t.string   "key182"
    t.decimal  "amount182",   precision: 10, scale: 2
    t.integer  "col182"
    t.string   "key183"
    t.decimal  "amount183",   precision: 10, scale: 2
    t.integer  "col183"
    t.string   "key184"
    t.decimal  "amount184",   precision: 10, scale: 2
    t.integer  "col184"
    t.string   "key185"
    t.decimal  "amount185",   precision: 10, scale: 2
    t.integer  "col185"
    t.string   "key186"
    t.decimal  "amount186",   precision: 10, scale: 2
    t.integer  "col186"
    t.string   "key187"
    t.decimal  "amount187",   precision: 10, scale: 2
    t.integer  "col187"
    t.string   "key188"
    t.decimal  "amount188",   precision: 10, scale: 2
    t.integer  "col188"
    t.string   "key189"
    t.decimal  "amount189",   precision: 10, scale: 2
    t.integer  "col189"
    t.string   "key190"
    t.decimal  "amount190",   precision: 10, scale: 2
    t.integer  "col190"
    t.string   "key191"
    t.decimal  "amount191",   precision: 10, scale: 2
    t.integer  "col191"
    t.string   "key192"
    t.decimal  "amount192",   precision: 10, scale: 2
    t.integer  "col192"
    t.string   "key193"
    t.decimal  "amount193",   precision: 10, scale: 2
    t.integer  "col193"
    t.string   "key194"
    t.decimal  "amount194",   precision: 10, scale: 2
    t.integer  "col194"
    t.string   "key195"
    t.decimal  "amount195",   precision: 10, scale: 2
    t.integer  "col195"
    t.string   "key196"
    t.decimal  "amount196",   precision: 10, scale: 2
    t.integer  "col196"
    t.string   "key197"
    t.decimal  "amount197",   precision: 10, scale: 2
    t.integer  "col197"
    t.string   "key198"
    t.decimal  "amount198",   precision: 10, scale: 2
    t.integer  "col198"
    t.string   "key199"
    t.decimal  "amount199",   precision: 10, scale: 2
    t.integer  "col199"
    t.string   "key200"
    t.decimal  "amount200",   precision: 10, scale: 2
    t.integer  "col200"
    t.string   "key201"
    t.decimal  "amount201",   precision: 10, scale: 2
    t.integer  "col201"
    t.string   "key202"
    t.decimal  "amount202",   precision: 10, scale: 2
    t.integer  "col202"
    t.string   "key203"
    t.decimal  "amount203",   precision: 10, scale: 2
    t.integer  "col203"
    t.string   "key204"
    t.decimal  "amount204",   precision: 10, scale: 2
    t.integer  "col204"
    t.string   "key205"
    t.decimal  "amount205",   precision: 10, scale: 2
    t.integer  "col205"
    t.string   "key206"
    t.decimal  "amount206",   precision: 10, scale: 2
    t.integer  "col206"
    t.string   "key207"
    t.decimal  "amount207",   precision: 10, scale: 2
    t.integer  "col207"
    t.string   "key208"
    t.decimal  "amount208",   precision: 10, scale: 2
    t.integer  "col208"
    t.string   "key209"
    t.decimal  "amount209",   precision: 10, scale: 2
    t.integer  "col209"
    t.string   "key210"
    t.decimal  "amount210",   precision: 10, scale: 2
    t.integer  "col210"
    t.string   "key211"
    t.decimal  "amount211",   precision: 10, scale: 2
    t.integer  "col211"
    t.string   "key212"
    t.decimal  "amount212",   precision: 10, scale: 2
    t.integer  "col212"
    t.string   "key213"
    t.decimal  "amount213",   precision: 10, scale: 2
    t.integer  "col213"
    t.string   "key214"
    t.decimal  "amount214",   precision: 10, scale: 2
    t.integer  "col214"
    t.string   "key215"
    t.decimal  "amount215",   precision: 10, scale: 2
    t.integer  "col215"
    t.string   "key216"
    t.decimal  "amount216",   precision: 10, scale: 2
    t.integer  "col216"
    t.string   "key217"
    t.decimal  "amount217",   precision: 10, scale: 2
    t.integer  "col217"
    t.string   "key218"
    t.decimal  "amount218",   precision: 10, scale: 2
    t.integer  "col218"
    t.string   "key219"
    t.decimal  "amount219",   precision: 10, scale: 2
    t.integer  "col219"
    t.string   "key220"
    t.decimal  "amount220",   precision: 10, scale: 2
    t.integer  "col220"
    t.string   "key221"
    t.decimal  "amount221",   precision: 10, scale: 2
    t.integer  "col221"
    t.string   "key222"
    t.decimal  "amount222",   precision: 10, scale: 2
    t.integer  "col222"
    t.string   "key223"
    t.decimal  "amount223",   precision: 10, scale: 2
    t.integer  "col223"
    t.string   "key224"
    t.decimal  "amount224",   precision: 10, scale: 2
    t.integer  "col224"
    t.string   "key225"
    t.decimal  "amount225",   precision: 10, scale: 2
    t.integer  "col225"
    t.string   "key226"
    t.decimal  "amount226",   precision: 10, scale: 2
    t.integer  "col226"
    t.string   "key227"
    t.decimal  "amount227",   precision: 10, scale: 2
    t.integer  "col227"
    t.string   "key228"
    t.decimal  "amount228",   precision: 10, scale: 2
    t.integer  "col228"
    t.string   "key229"
    t.decimal  "amount229",   precision: 10, scale: 2
    t.integer  "col229"
    t.string   "key230"
    t.decimal  "amount230",   precision: 10, scale: 2
    t.integer  "col230"
    t.string   "key231"
    t.decimal  "amount231",   precision: 10, scale: 2
    t.integer  "col231"
    t.string   "key232"
    t.decimal  "amount232",   precision: 10, scale: 2
    t.integer  "col232"
    t.string   "key233"
    t.decimal  "amount233",   precision: 10, scale: 2
    t.integer  "col233"
    t.string   "key234"
    t.decimal  "amount234",   precision: 10, scale: 2
    t.integer  "col234"
    t.string   "key235"
    t.decimal  "amount235",   precision: 10, scale: 2
    t.integer  "col235"
    t.string   "key236"
    t.decimal  "amount236",   precision: 10, scale: 2
    t.integer  "col236"
    t.string   "key237"
    t.decimal  "amount237",   precision: 10, scale: 2
    t.integer  "col237"
    t.string   "key238"
    t.decimal  "amount238",   precision: 10, scale: 2
    t.integer  "col238"
    t.string   "key239"
    t.decimal  "amount239",   precision: 10, scale: 2
    t.integer  "col239"
    t.string   "key240"
    t.decimal  "amount240",   precision: 10, scale: 2
    t.integer  "col240"
    t.string   "key241"
    t.decimal  "amount241",   precision: 10, scale: 2
    t.integer  "col241"
    t.string   "key242"
    t.decimal  "amount242",   precision: 10, scale: 2
    t.integer  "col242"
    t.string   "key243"
    t.decimal  "amount243",   precision: 10, scale: 2
    t.integer  "col243"
    t.string   "key244"
    t.decimal  "amount244",   precision: 10, scale: 2
    t.integer  "col244"
    t.string   "key245"
    t.decimal  "amount245",   precision: 10, scale: 2
    t.integer  "col245"
    t.string   "key246"
    t.decimal  "amount246",   precision: 10, scale: 2
    t.integer  "col246"
    t.string   "key247"
    t.decimal  "amount247",   precision: 10, scale: 2
    t.integer  "col247"
    t.string   "key248"
    t.decimal  "amount248",   precision: 10, scale: 2
    t.integer  "col248"
    t.string   "key249"
    t.decimal  "amount249",   precision: 10, scale: 2
    t.integer  "col249"
    t.string   "key250"
    t.decimal  "amount250",   precision: 10, scale: 2
    t.integer  "col250"
    t.string   "key251"
    t.decimal  "amount251",   precision: 10, scale: 2
    t.integer  "col251"
    t.string   "key252"
    t.decimal  "amount252",   precision: 10, scale: 2
    t.integer  "col252"
    t.string   "key253"
    t.decimal  "amount253",   precision: 10, scale: 2
    t.integer  "col253"
    t.string   "key254"
    t.decimal  "amount254",   precision: 10, scale: 2
    t.integer  "col254"
    t.string   "key255"
    t.decimal  "amount255",   precision: 10, scale: 2
    t.integer  "col255"
    t.string   "key256"
    t.decimal  "amount256",   precision: 10, scale: 2
    t.integer  "col256"
    t.string   "key257"
    t.decimal  "amount257",   precision: 10, scale: 2
    t.integer  "col257"
    t.string   "key258"
    t.decimal  "amount258",   precision: 10, scale: 2
    t.integer  "col258"
    t.string   "key259"
    t.decimal  "amount259",   precision: 10, scale: 2
    t.integer  "col259"
    t.string   "key260"
    t.decimal  "amount260",   precision: 10, scale: 2
    t.integer  "col260"
    t.string   "key261"
    t.decimal  "amount261",   precision: 10, scale: 2
    t.integer  "col261"
    t.string   "key262"
    t.decimal  "amount262",   precision: 10, scale: 2
    t.integer  "col262"
    t.string   "key263"
    t.decimal  "amount263",   precision: 10, scale: 2
    t.integer  "col263"
    t.string   "key264"
    t.decimal  "amount264",   precision: 10, scale: 2
    t.integer  "col264"
    t.string   "key265"
    t.decimal  "amount265",   precision: 10, scale: 2
    t.integer  "col265"
    t.string   "key266"
    t.decimal  "amount266",   precision: 10, scale: 2
    t.integer  "col266"
    t.string   "key267"
    t.decimal  "amount267",   precision: 10, scale: 2
    t.integer  "col267"
    t.string   "key268"
    t.decimal  "amount268",   precision: 10, scale: 2
    t.integer  "col268"
    t.string   "key269"
    t.decimal  "amount269",   precision: 10, scale: 2
    t.integer  "col269"
    t.string   "key270"
    t.decimal  "amount270",   precision: 10, scale: 2
    t.integer  "col270"
    t.string   "key271"
    t.decimal  "amount271",   precision: 10, scale: 2
    t.integer  "col271"
    t.string   "key272"
    t.decimal  "amount272",   precision: 10, scale: 2
    t.integer  "col272"
    t.string   "key273"
    t.decimal  "amount273",   precision: 10, scale: 2
    t.integer  "col273"
    t.string   "key274"
    t.decimal  "amount274",   precision: 10, scale: 2
    t.integer  "col274"
    t.string   "key275"
    t.decimal  "amount275",   precision: 10, scale: 2
    t.integer  "col275"
    t.string   "key276"
    t.decimal  "amount276",   precision: 10, scale: 2
    t.integer  "col276"
    t.string   "key277"
    t.decimal  "amount277",   precision: 10, scale: 2
    t.integer  "col277"
    t.string   "key278"
    t.decimal  "amount278",   precision: 10, scale: 2
    t.integer  "col278"
    t.string   "key279"
    t.decimal  "amount279",   precision: 10, scale: 2
    t.integer  "col279"
    t.string   "key280"
    t.decimal  "amount280",   precision: 10, scale: 2
    t.integer  "col280"
    t.string   "key281"
    t.decimal  "amount281",   precision: 10, scale: 2
    t.integer  "col281"
    t.string   "key282"
    t.decimal  "amount282",   precision: 10, scale: 2
    t.integer  "col282"
    t.string   "key283"
    t.decimal  "amount283",   precision: 10, scale: 2
    t.integer  "col283"
    t.string   "key284"
    t.decimal  "amount284",   precision: 10, scale: 2
    t.integer  "col284"
    t.string   "key285"
    t.decimal  "amount285",   precision: 10, scale: 2
    t.integer  "col285"
    t.string   "key286"
    t.decimal  "amount286",   precision: 10, scale: 2
    t.integer  "col286"
    t.string   "key287"
    t.decimal  "amount287",   precision: 10, scale: 2
    t.integer  "col287"
    t.string   "key288"
    t.decimal  "amount288",   precision: 10, scale: 2
    t.integer  "col288"
    t.string   "key289"
    t.decimal  "amount289",   precision: 10, scale: 2
    t.integer  "col289"
    t.string   "key290"
    t.decimal  "amount290",   precision: 10, scale: 2
    t.integer  "col290"
    t.string   "key291"
    t.decimal  "amount291",   precision: 10, scale: 2
    t.integer  "col291"
    t.string   "key292"
    t.decimal  "amount292",   precision: 10, scale: 2
    t.integer  "col292"
    t.string   "key293"
    t.decimal  "amount293",   precision: 10, scale: 2
    t.integer  "col293"
    t.string   "key294"
    t.decimal  "amount294",   precision: 10, scale: 2
    t.integer  "col294"
    t.string   "key295"
    t.decimal  "amount295",   precision: 10, scale: 2
    t.integer  "col295"
    t.string   "key296"
    t.decimal  "amount296",   precision: 10, scale: 2
    t.integer  "col296"
    t.string   "key297"
    t.decimal  "amount297",   precision: 10, scale: 2
    t.integer  "col297"
    t.string   "key298"
    t.decimal  "amount298",   precision: 10, scale: 2
    t.integer  "col298"
    t.string   "key299"
    t.decimal  "amount299",   precision: 10, scale: 2
    t.integer  "col299"
    t.string   "key300"
    t.decimal  "amount300",   precision: 10, scale: 2
    t.integer  "col300"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "title1"
    t.string   "title2"
    t.string   "time_period"
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
