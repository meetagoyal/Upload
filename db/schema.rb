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

ActiveRecord::Schema.define(version: 20170921172515) do

  create_table "'RAD Sample to McKesson$'", id: false, force: :cascade do |t|
    t.float "Sample ID"
    t.float "NDC"
    t.string "Month", limit: 255
    t.float " Total Qty "
    t.money " Price Per Unit ", precision: 19, scale: 4
    t.money " Final Price ", precision: 19, scale: 4
    t.string "Product Name", limit: 255
    t.string "Labeler Name", limit: 255
    t.float "Year"
  end

  create_table "Details$", id: false, force: :cascade do |t|
    t.float "EM_ITEM_NUM"
    t.string "SELL_DSCR", limit: 255
    t.string "SPLR_ACCT_NAM", limit: 255
    t.float "SAP_SOLD_TO"
    t.float "NDC_CD"
    t.string "PROGRAM", limit: 255
    t.float "PROGRAM_TYPE"
    t.string "PGM_TYP_DSCR", limit: 255
    t.float "CUST_CHN_ID"
    t.float "CNTRC_LEAD_TP_ID"
    t.float "COMPANY_CODE"
    t.string "CUSTOMER_NAME", limit: 255
    t.string "SPLR_CHRGBK_REF_NUM", limit: 255
    t.string "CHRGBKSUP_FLG", limit: 255
    t.string "CB_EXT_REF_NUM", limit: 255
    t.string "RXDA_CD", limit: 255
    t.string "CUST_BUS_TYP_DSCR", limit: 255
    t.float "CUST_BUS_TYP_CD"
    t.float "SLS_ID"
    t.float "SLS_ID_SEQ_NUM"
    t.float "SALES_QTY"
    t.float "SALES"
    t.float "WAC"
    t.float "SF"
    t.float "SSF"
    t.float "SDC"
    t.float "ADMIN_FEE"
    t.float "OS PUR"
    t.float "DN2 PUR"
    t.float "OS PSR"
    t.float "DN2 RFP Exemption PSR"
    t.float "DN2 PSR"
    t.float "OS SSR"
    t.float "DN2 SSR"
    t.float "OS GTR"
    t.float "Total DLRS"
  end

  create_table "PRC_CHG_EVENT_NEW", id: false, force: :cascade do |t|
    t.char "RUN_YR_MONTH", limit: 6, null: false
    t.integer "LEAD", null: false
    t.char "EM_ITEM_NUM", limit: 7, null: false
    t.date "PRC_CHG_DT", null: false
    t.decimal "OLD_AMT", precision: 11, scale: 2, null: false
    t.decimal "NEW_AMT", precision: 11, scale: 2, null: false
    t.boolean "PRC_INCR_IND"
    t.date "NOTIFY_DT"
    t.integer "PROT_SLS_QTY"
    t.integer "PROT_DAYS"
    t.integer "OH_QTY"
    t.boolean "OH_QTY_BASIS_IND"
    t.boolean "SUSTAINED_IND", null: false
    t.boolean "RA_OS_PRIMARY_ITEM_IND", null: false
    t.boolean "MERGED_IND", null: false
    t.boolean "GX_LAUNCH_IND"
    t.date "PROT_EFF_DT"
    t.date "PROT_END_DT"
    t.decimal "PROT_PRC", precision: 11, scale: 2
  end

  create_table "PRC_CHG_EVENT_OLD", id: false, force: :cascade do |t|
    t.char "RUN_YR_MONTH", limit: 6, null: false
    t.integer "LEAD", null: false
    t.char "EM_ITEM_NUM", limit: 7, null: false
    t.date "PRC_CHG_DT", null: false
    t.decimal "OLD_AMT", precision: 11, scale: 2, null: false
    t.decimal "NEW_AMT", precision: 11, scale: 2, null: false
    t.boolean "PRC_INCR_IND"
    t.date "NOTIFY_DT"
    t.integer "PROT_SLS_QTY"
    t.integer "PROT_DAYS"
    t.integer "OH_QTY"
    t.boolean "OH_QTY_BASIS_IND"
    t.boolean "SUSTAINED_IND", null: false
    t.boolean "RA_OS_PRIMARY_ITEM_IND", null: false
    t.boolean "MERGED_IND", null: false
    t.boolean "GX_LAUNCH_IND"
    t.date "PROT_EFF_DT"
    t.date "PROT_END_DT"
    t.decimal "PROT_PRC", precision: 11, scale: 2
  end

  create_table "PRC_CHG_PROT_EFF_PRC_NEW", id: false, force: :cascade do |t|
    t.char "RUN_YR_MONTH", limit: 6, null: false
    t.integer "LEAD", null: false
    t.char "EM_ITEM_NUM", limit: 7, null: false
    t.date "EFF_DT", null: false
    t.date "END_DT", null: false
    t.decimal "ACTUAL_PRC", precision: 11, scale: 2
    t.decimal "EFF_PRC", precision: 11, scale: 2
    t.date "PRC_CHG_DT", null: false
  end

  create_table "PRC_CHG_PROT_EFF_PRC_OLD", id: false, force: :cascade do |t|
    t.char "RUN_YR_MONTH", limit: 6, null: false
    t.integer "LEAD", null: false
    t.char "EM_ITEM_NUM", limit: 7, null: false
    t.date "EFF_DT", null: false
    t.date "END_DT", null: false
    t.decimal "ACTUAL_PRC", precision: 11, scale: 2
    t.decimal "EFF_PRC", precision: 11, scale: 2
    t.date "PRC_CHG_DT", null: false
  end

  create_table "SLS_ID_TMP", id: false, force: :cascade do |t|
    t.decimal "sls_id", precision: 10, scale: 0
  end

  create_table "SLS_RBT", id: false, force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0
    t.boolean "PRC_INCR_IND"
    t.decimal "SLS_ID", precision: 10, scale: 0
    t.integer "SLS_ID_SEQ_NUM"
    t.integer "PROT_SLS_QTY"
    t.decimal "UNIT_PRC_CHG_PROT_AMT", precision: 11, scale: 2
    t.index ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM"], name: "UCIX_SLS_RBT", unique: true
  end

  create_table "SLS_RBT_NEW", id: false, force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0
    t.decimal "SLS_ID", precision: 10, scale: 0
    t.integer "SLS_ID_SEQ_NUM"
    t.decimal "RBT_AMT", precision: 11, scale: 2
    t.index ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM"], name: "UCIX_SLS_RBT_NEW", unique: true
  end

  create_table "SLS_RBT_OLD", id: false, force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0
    t.decimal "SLS_ID", precision: 10, scale: 0
    t.integer "SLS_ID_SEQ_NUM"
    t.decimal "RBT_AMT", precision: 11, scale: 2
    t.index ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM"], name: "UCIX_SLS_RBT_OLD", unique: true
  end

  create_table "T_ACCR", primary_key: ["AGREEMENT", "EVAL_FROM_DT", "EVAL_TO_DT", "CATEGORY", "SLS_ID", "SLS_ID_SEQ_NUM", "ACCT_DOC"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.date "EVAL_FROM_DT", null: false
    t.date "EVAL_TO_DT", null: false
    t.char "CATEGORY", limit: 2, null: false
    t.decimal "SLS_ID", precision: 10, scale: 0, null: false
    t.integer "SLS_ID_SEQ_NUM", null: false
    t.decimal "ACCT_DOC", precision: 10, scale: 0, null: false
    t.date "ACCRUAL_FROM_DT"
    t.date "ACCRUAL_TO_DT"
    t.date "POST_DT", null: false
    t.decimal "RBT_AMT", precision: 15, scale: 2, null: false
    t.boolean "PPA_IND", null: false
    t.datetime "CREATED_TS", precision: 0
    t.index ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM"], name: "IX_T_ACCR_AGR_SLS_ID"
  end

  create_table "T_ACCR_RBT_AMT", id: false, force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.decimal "SLS_ID", precision: 10, scale: 0, null: false
    t.integer "SLS_ID_SEQ_NUM", null: false
    t.decimal "RBT_AMT", precision: 19, scale: 2
  end

  create_table "T_ADMIN_FEE", id: false, force: :cascade do |t|
    t.varchar "YR_MNTH", limit: 6, null: false
    t.varchar "PROGRAM", limit: 25, null: false
    t.varchar "CUST_NUM", limit: 6, null: false
    t.varchar "CUST_CHN_ID", limit: 3, null: false
    t.varchar "NDC_CD", limit: 11, null: false
    t.varchar "NATL_GRP_CD", limit: 4, null: false
    t.varchar "NATL_SUB_GRP_CD", limit: 6, null: false
    t.varchar "SAP_SOLD_TO", limit: 8, null: false
    t.decimal "ADMIN_FEE", precision: 15, scale: 2
    t.varchar "IS_PPA", limit: 1, null: false
    t.varchar "POST_YR_MNTH", limit: 6, null: false
    t.datetime "LOADDT", precision: 7
  end

  create_table "T_AGREEMENT", primary_key: "AGREEMENT", id: :decimal, precision: 10, scale: 0, default: nil, force: :cascade do |t|
    t.integer "CUSTOMER_ID", null: false
    t.varchar "DSCR", limit: 255
    t.char "AGR_TYPE", limit: 4
    t.boolean "INACTIVE_FLG", default: false, null: false
    t.decimal "PARENT_AGREEMENT", precision: 10, scale: 0
    t.index ["DSCR"], name: "UIX_AGREEMENT", unique: true
  end

  create_table "T_AGREEMENT_CUST_CTGY", primary_key: ["AGREEMENT", "CUSTOMER_ID", "CTGY"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.integer "CUSTOMER_ID", null: false
    t.varchar "CTGY", limit: 4, null: false
    t.varchar "CTGY_TYP", limit: 4, null: false
    t.integer "USE_OMIT_PGM_TYP", limit: 1, null: false
  end

  create_table "T_AGREEMENT_GLOBAL_SOURCING", primary_key: ["AGREEMENT", "PGM_TYP", "RBT_TYP_ID", "START_DT"], force: :cascade do |t|
    t.integer "CUSTOMER_ID", null: false
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.varchar "PGM_TYP", limit: 3, null: false
    t.integer "RBT_TYP_ID", null: false
    t.varchar "RBT_TYP_NAME", limit: 50
    t.date "START_DT", null: false
    t.date "END_DT"
    t.integer "USE_OMIT_PGM_TYP", limit: 1, null: false
  end

  create_table "T_AGREEMENT_LEAD_COST", primary_key: "LEAD", id: :integer, default: nil, force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.integer "COST_ID", null: false
    t.decimal "PRICE_BASIS_MARKUP", precision: 4, scale: 4, null: false
    t.integer "USE_OMIT_LEAD", limit: 1, null: false
  end

  create_table "T_AGREEMENT_LEAD_PRC_CHG_PROT", primary_key: ["LEAD", "PRC_INCR_IND"], force: :cascade do |t|
    t.integer "LEAD", null: false
    t.boolean "PRC_INCR_IND", null: false
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.date "EFF_DT", null: false
    t.date "FIRST_SO_PRC_DT", null: false
    t.integer "COST_ID", null: false
    t.integer "TRIGGER_COST_ID", null: false
  end

  create_table "T_AGREEMENT_PGM_TYP_RBT_TYP", primary_key: ["AGREEMENT", "PGM_TYP", "RBT_TYP_ID"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.varchar "PGM_TYP", limit: 3, null: false
    t.integer "RBT_TYP_ID", null: false
    t.varchar "RBT_TYP_NAME", limit: 50
    t.integer "USE_OMIT_PGM_TYP", limit: 1, null: false
  end

  create_table "T_AGREEMENT_PRICE", primary_key: ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM", "VERSION"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.decimal "SLS_ID", precision: 10, scale: 0, null: false
    t.integer "SLS_ID_SEQ_NUM", null: false
    t.integer "VERSION", null: false
    t.char "ADJ_TYPE", limit: 2
    t.decimal "NET_PRICE", precision: 11, scale: 2
    t.datetime "RUN_TS", precision: 0
    t.varchar "PROCESSED_IND", limit: 1
  end

  create_table "T_AGREEMENT_REBATE", primary_key: ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM", "VERSION"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.decimal "SLS_ID", precision: 10, scale: 0, null: false
    t.integer "SLS_ID_SEQ_NUM", null: false
    t.integer "VERSION", null: false
    t.decimal "RBT_AMT", precision: 11, scale: 2
    t.datetime "RUN_TS", precision: 0
    t.varchar "PROCESSED_IND", limit: 1
    t.index ["SLS_ID", "SLS_ID_SEQ_NUM"], name: "IX_AGREEMENT_REBATE_SLS_ID"
  end

  create_table "T_AGREEMENT_REBATE_PERF_TEST", primary_key: ["AGREEMENT", "SLS_ID", "SLS_ID_SEQ_NUM", "VERSION"], force: :cascade do |t|
    t.decimal "AGREEMENT", precision: 10, scale: 0, null: false
    t.decimal "SLS_ID", precision: 10, scale: 0, null: false
    t.integer "SLS_ID_SEQ_NUM", null: false
    t.integer "VERSION", null: false
    t.decimal "RBT_AMT", precision: 11, scale: 2
    t.datetime "RUN_TS", precision: 0
    t.varchar "PROCESSED_IND", limit: 1
    t.index ["SLS_ID", "SLS_ID_SEQ_NUM"], name: "IX_AGREEMENT_REBATE_PERF_TEST_SLS_ID"
  end

