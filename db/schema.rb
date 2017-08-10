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

ActiveRecord::Schema.define(version: 20170804184234) do

  create_table "activity_participant_assignment", primary_key: ["cpkfk_activity_instance_id", "cpkfk_user_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpkfk_user_id", default: 0, null: false
    t.integer "cpkfk_activity_instance_id", default: 0, null: false
    t.datetime "date_created"
    t.integer "fk_assistant_id"
  end

  create_table "ad_library_node", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.datetime "date_created"
    t.datetime "date_modified"
    t.integer "fk_latest_template_id"
    t.integer "fk_parent_node_id"
    t.integer "fk_template_id"
    t.string "is_active", limit: 1
    t.integer "level"
    t.string "name", limit: 50
    t.string "thumbnail_unique_name", limit: 100
    t.string "thumbnail_upload_name", limit: 100
  end

  create_table "ad_matrix_category", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "category_name", limit: 75
    t.integer "fk_parent_category_id"
    t.string "is_active", limit: 1
    t.integer "sort_order"
    t.integer "fk_featured_headline_id"
    t.datetime "date_embargo"
    t.datetime "date_expiration"
    t.integer "level"
    t.string "thumbnail_unique_name", limit: 100
    t.string "thumbnail_upload_name", limit: 100
    t.datetime "date_created"
    t.datetime "date_modified"
    t.integer "fk_latest_template_id"
    t.integer "copied_headline_id"
  end

  create_table "ad_matrix_category_headline", primary_key: ["ad_matrix_pk_id", "headline_pk_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "ad_matrix_pk_id", default: 0, null: false
    t.integer "headline_pk_id", default: 0, null: false
  end

  create_table "additional_run_date", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "pk_id", default: 0, null: false
    t.datetime "run_date"
    t.integer "fk_order_id"
  end

  create_table "approval_detail", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_role_id"
    t.text "comments"
    t.datetime "date_created"
    t.integer "fk_order_id"
    t.integer "fk_order_item_id"
    t.integer "fk_user_id"
    t.integer "fk_work_activity_instance_id"
    t.string "media_id", limit: 15
    t.string "order_number", limit: 15
    t.string "status_description", limit: 100
    t.string "user_name", limit: 100
    t.string "user_role", limit: 100
    t.integer "fk_assistant_id"
  end

  create_table "category_to_category", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cp_fk_copy_category_id", default: 0, null: false
    t.integer "cp_fk_destination_category_id", default: 0, null: false
    t.index ["cp_fk_copy_category_id"], name: "cp_fk_copy_category_id"
    t.index ["cp_fk_destination_category_id"], name: "cp_fk_destination_category_id"
  end

  create_table "cdg_configuration", primary_key: "pk_id", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50, default: ""
    t.string "value", limit: 500
    t.string "is_default", limit: 1
  end

  create_table "cdg_faq", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.text "answer"
    t.text "question"
    t.integer "sort_order"
  end

  create_table "cdg_function", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "name", limit: 100
  end

  create_table "cdg_function_group", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 100
    t.integer "sort_order"
  end

  create_table "cdg_nav_menu_item", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "display_string", limit: 50
    t.integer "fk_parent_nav_menu_item_id"
    t.string "is_active", limit: 1
    t.string "page_name", limit: 50
    t.integer "sort_order"
    t.string "display_image_filename", limit: 100
  end

  create_table "cdg_order", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "contact_email_address", limit: 50
    t.string "contact_name", limit: 100
    t.string "contact_phone", limit: 25
    t.decimal "cost", precision: 12, scale: 2
    t.datetime "date_created"
    t.integer "fk_creator_id"
    t.integer "fk_publication_type_id"
    t.datetime "materials_close_date"
    t.string "publication_name", limit: 100
    t.datetime "run_date"
    t.datetime "seminar_date_time"
    t.string "seminar_location", limit: 200
    t.string "speaker_name_and_title", limit: 200
    t.string "advisor_name", limit: 100
    t.integer "fk_advisor_title_id"
    t.string "advisor_phone", limit: 15
    t.string "branch_address1", limit: 100
    t.string "branch_city", limit: 50
    t.integer "fk_branch_state_id"
    t.integer "fk_template_id"
    t.integer "fk_ad_size_id"
    t.string "is_active", limit: 1
    t.text "comments"
    t.datetime "date_downloaded"
    t.datetime "date_submitted"
    t.integer "fk_order_status_id"
    t.string "branch_address2", limit: 100
    t.string "branch_zip", limit: 20
    t.string "branch_id", limit: 10
    t.string "branch_name", limit: 100
    t.integer "fk_source_branch_id"
    t.integer "fk_headline_id"
    t.string "last_saved_page_name", limit: 50
    t.string "hi_res_uri", limit: 200
    t.string "last_preview"
    t.integer "fk_area_id"
    t.integer "fk_region_id"
    t.integer "fk_branch_id"
    t.string "is_legacy", limit: 1
    t.integer "fk_assistant_id"
    t.string "faURL", limit: 100
  end

  create_table "cdg_order_status", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.integer "sort_order"
    t.string "name_for_display", limit: 100, default: ""
  end

  create_table "cdg_permission", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "agent_type", limit: 50
    t.integer "fk_user_agent_id"
    t.integer "fk_function_resource_id"
    t.string "permission", limit: 1
    t.string "resource_type", limit: 50
    t.string "is_active", limit: 1
    t.integer "fk_role_agent_id"
    t.integer "fk_function_group_resource_id"
    t.integer "fk_nav_menu_item_resource_id"
    t.integer "fk_permission_type_id"
  end

  create_table "cdg_permission_type", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.integer "fk_permission_type_id"
  end

  create_table "cdg_role", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.integer "sort_order"
  end

  create_table "cdg_template", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_ad_matrix_category_id"
    t.string "code", limit: 10
    t.string "title", limit: 50
    t.string "is_active", limit: 1
    t.string "path"
    t.integer "version", default: 1
    t.integer "fk_ad_size"
    t.integer "fk_headline"
    t.text "xml_info", limit: 16777215
    t.string "thumbnail_path"
    t.text "instructions"
    t.string "proxy_path"
    t.string "pdf_filename", limit: 150
    t.integer "mediatype_id"
    t.integer "tweenDuration"
    t.integer "tweenFrames"
  end

  create_table "cdg_template_stage_data", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_ad_matrix_category_id"
    t.string "code", limit: 10
    t.string "title", limit: 50
    t.string "is_active", limit: 1
    t.string "path"
    t.integer "version", default: 1
    t.integer "fk_ad_size"
    t.integer "fk_headline"
    t.text "xml_info", limit: 16777215
    t.string "thumbnail_path"
    t.text "instructions"
    t.string "proxy_path"
    t.string "pdf_filename", limit: 150
  end

  create_table "cdg_user", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "date_created"
    t.datetime "date_modified"
    t.string "password", limit: 50, collation: "utf8_bin"
    t.string "username", limit: 100
    t.string "is_active", limit: 1
    t.integer "fk_user_info_id"
    t.datetime "date_last_logged_in"
    t.string "skip_login_profile_page", limit: 1
    t.string "new_login", limit: 50
    t.integer "fk_user_id"
  end

  create_table "cdg_user_to_role_assignment", primary_key: ["cpkfk_role_id", "cpkfk_user_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpkfk_role_id", default: 0, null: false
    t.integer "cpkfk_user_id", default: 0, null: false
    t.string "is_active", limit: 1
    t.integer "role_sort_order"
    t.integer "user_sort_order"
  end

  create_table "client", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "client_name", limit: 100
    t.string "client_short_name", limit: 10
    t.string "is_active", limit: 1
  end

  create_table "comment", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "date_created"
    t.datetime "date_modified"
    t.integer "fk_creator_id"
    t.text "value"
    t.integer "fk_assistant_id"
  end

  create_table "comment_to_order", primary_key: ["cpkfk_comment_id", "cpkfk_order_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpkfk_comment_id", default: 0, null: false
    t.integer "cpkfk_order_id", default: 0, null: false
  end

  create_table "copied_category", primary_key: ["destination_pk_id", "copied_pk_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "destination_pk_id", default: 0, null: false
    t.integer "copied_pk_id", default: 0, null: false
  end

  create_table "customvalue", primary_key: "pkID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 100, null: false
    t.integer "templateFormFieldID", null: false
    t.string "value", limit: 200, null: false
  end

  create_table "data_ref", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "value"
    t.string "type", limit: 25
    t.integer "fk_type_id"
  end

  create_table "data_ref2", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "value"
    t.string "type", limit: 25
    t.integer "fk_type_id"
  end

  create_table "data_ref_type", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 30
  end

  create_table "designation", primary_key: "pk_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "isRegistered", limit: 1, default: "Y"
    t.string "name", limit: 5
    t.integer "sortOrder"
  end

  create_table "designationformfieldvalue", primary_key: ["designationPk_id", "formFieldValuePkID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "designationPk_id", null: false
    t.integer "formFieldValuePkID", null: false
  end

  create_table "diagnostic", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.date "date_created"
  end

  create_table "domain", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "date_created"
    t.string "name", limit: 50
    t.integer "sort_order"
    t.string "is_active", limit: 1
  end

  create_table "eo_pk_table", primary_key: "NAME", id: :string, limit: 40, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "PK"
  end

  create_table "excel_valid_params", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_required", limit: 1
    t.string "excel_col_name", limit: 100
    t.integer "excel_col_number"
    t.string "type", limit: 100
  end

  create_table "export_user", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "emp_id", limit: 25
    t.string "branch_id", limit: 25
    t.string "region_id", limit: 15
    t.string "last_name", limit: 50
    t.string "first_name", limit: 50
    t.string "job_title", limit: 100
    t.string "email_address", limit: 50
    t.integer "fk_user_id"
    t.string "financial_advisor_id", limit: 25
    t.string "area_id", limit: 50
  end

  create_table "featured_headline", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "tag_line"
    t.integer "headline_sort_order"
    t.integer "fk_headline_id"
  end

  create_table "featured_link", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "address", limit: 100
    t.string "link_name", limit: 100
  end

  create_table "form_field_type", primary_key: "pk_id", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "type"
    t.integer "fk_data_ref_id"
  end

  create_table "form_field_value", primary_key: "pk_ID", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_template_form_field_id"
    t.integer "fk_order_id"
    t.text "value"
    t.integer "x_position"
    t.integer "y_position"
    t.integer "fk_user_id"
    t.integer "fk_portrait_image_id"
    t.integer "fk_title_id"
    t.integer "fk_title2_id"
    t.integer "title3ID"
    t.integer "customValueID"
  end

  create_table "function_to_group_assignment", primary_key: ["cpkfk_function_id", "cpkfk_function_group_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "group_sort_order"
    t.integer "cpkfk_function_group_id", default: 0, null: false
    t.integer "cpkfk_function_id", default: 0, null: false
    t.integer "function_sort_order"
  end

  create_table "headline_to_ad_size_assignment", primary_key: ["cpkfk_ad_size_id", "cpkfk_headline_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpkfk_ad_size_id", default: 0, null: false
    t.integer "cpkfk_headline_id", default: 0, null: false
    t.string "is_active", limit: 1
  end

  create_table "headlinecolortype", primary_key: "pkID", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "type"
  end

  create_table "import_fa_new", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "var_division", limit: 100
    t.string "var_district", limit: 100
    t.string "var_branch", limit: 100
    t.string "var_lastname", limit: 100
    t.string "var_firstname", limit: 100
    t.string "var_empid", limit: 100, default: "", null: false
    t.string "var_jobtitle", limit: 100
    t.string "var_jobcode", limit: 100
    t.string "var_address1", limit: 100
    t.string "var_address2", limit: 100
    t.string "var_city", limit: 100
    t.string "var_state", limit: 100
    t.string "var_zip", limit: 100
    t.string "var_email", limit: 100, default: "", null: false
    t.string "var_workphone", limit: 100
    t.string "var_firm", limit: 100
    t.string "var_region", limit: 100
    t.string "var_workaddressfull", limit: 200
    t.datetime "var_date_added"
    t.string "var_address3", limit: 100
    t.string "complex_id", limit: 15
    t.string "complex_name", limit: 100
  end

  create_table "import_financial_advisor", primary_key: "email_address", id: :string, limit: 50, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "branch_id", limit: 25
    t.string "emp_id", limit: 25
    t.string "financial_advisor_id", limit: 25
    t.string "first_name", limit: 50
    t.string "job_category", limit: 100
    t.string "last_name", limit: 50
  end

  create_table "import_ma_new", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "var_division", limit: 100
    t.string "var_district", limit: 100
    t.string "var_branch", limit: 100
    t.string "var_lastname", limit: 100
    t.string "var_firstname", limit: 100
    t.string "var_empid", limit: 100, default: "", null: false
    t.string "var_jobtitle", limit: 100
    t.string "var_jobcode", limit: 100
    t.string "var_address1", limit: 100
    t.string "var_address2", limit: 100
    t.string "var_city", limit: 100
    t.string "var_state", limit: 100
    t.string "var_zip", limit: 100
    t.string "var_email", limit: 100, default: "", null: false
    t.string "var_workphone", limit: 100
    t.string "var_firm", limit: 100
    t.string "var_region", limit: 100
    t.string "var_workaddressfull", limit: 200
    t.datetime "var_date_added"
    t.string "complex_id", limit: 15
    t.string "complex_name", limit: 100
  end

  create_table "import_manager", primary_key: "email_address", id: :string, limit: 50, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "address", limit: 100
    t.string "area_id", limit: 25
    t.string "branch_id", limit: 25
    t.string "city", limit: 50
    t.string "emp_id", limit: 25
    t.string "first_name", limit: 50
    t.string "job_category", limit: 100
    t.string "last_name", limit: 50
    t.string "region_id", limit: 15
    t.string "state", limit: 15
    t.string "work_phone", limit: 50
    t.string "zip", limit: 50
  end

  create_table "import_new_branch", primary_key: "branch_id", id: :string, limit: 10, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "address1", limit: 100
    t.string "address2", limit: 100
    t.string "city", limit: 50
    t.string "district_area_id", limit: 25
    t.string "name", limit: 100
    t.string "state", limit: 15
    t.string "zip", limit: 50
  end

  create_table "imported_fa_new", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "var_email", limit: 100, default: "", null: false
    t.string "var_division", limit: 100
    t.string "var_district", limit: 100
    t.string "var_branch", limit: 100
    t.string "var_firstname", limit: 100
    t.string "var_lastname", limit: 100
    t.string "var_empid", limit: 100, default: "", null: false
    t.string "var_jobcode", limit: 100
    t.string "var_jobtitle", limit: 100
    t.string "var_workaddressfull", limit: 100
    t.string "var_city", limit: 100
    t.string "var_state", limit: 100
    t.string "var_zip", limit: 100
    t.string "var_workphone", limit: 100
    t.string "var_firm", limit: 100
    t.string "var_region", limit: 100
    t.datetime "var_date_added"
  end

  create_table "imported_ma_new", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "var_email", limit: 100, default: "", null: false
    t.string "var_division", limit: 100
    t.string "var_district", limit: 100
    t.string "var_branch", limit: 100
    t.string "var_firstname", limit: 100
    t.string "var_lastname", limit: 100
    t.string "var_empid", limit: 100, default: "", null: false
    t.string "var_jobcode", limit: 100
    t.string "var_jobtitle", limit: 100
    t.string "var_workaddressfull", limit: 100
    t.string "var_city", limit: 100
    t.string "var_state", limit: 100
    t.string "var_zip", limit: 100
    t.string "var_workphone", limit: 100
    t.string "var_firm", limit: 100
    t.string "var_region", limit: 100
    t.datetime "var_date_added"
  end

  create_table "join_user_to_assistant", primary_key: ["cpfk_user_id", "cpfk_assistant_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpfk_user_id", default: 0, null: false
    t.integer "cpfk_assistant_id", default: 0, null: false
  end

  create_table "lab_ad_size", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "size_name", limit: 10
    t.integer "sort_order"
    t.integer "mediaTypeID"
  end

  create_table "lab_area", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_region_id"
    t.string "area_number", limit: 50
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.integer "sort_order"
  end

  create_table "lab_branch", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "address1"
    t.text "address2"
    t.string "city", limit: 25
    t.integer "fk_country_id"
    t.integer "fk_us_state_id"
    t.string "name", limit: 100
    t.string "zip", limit: 15
    t.string "is_active", limit: 1
    t.string "branch_id", limit: 15
    t.string "state", limit: 5
    t.integer "fk_area_id"
    t.integer "fk_complex_id"
  end

  create_table "lab_complex", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_area_id"
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.string "area_name", limit: 100
    t.string "complex_id", limit: 15
  end

  create_table "lab_headline", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_template"
    t.string "code", limit: 10
    t.integer "fk_ad_matrix_category_id"
    t.string "is_active", limit: 1
    t.string "title", limit: 100
    t.integer "fk_matching_headline_category_id"
    t.string "is_accessible", limit: 1, default: "Y"
    t.text "is_accessible_text"
    t.integer "headlineColorTypeID"
  end

  create_table "lab_region", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 100
    t.string "region_id", limit: 15
    t.integer "sort_order"
  end

  create_table "lab_user_info", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "date_created"
    t.datetime "date_modified"
    t.string "is_active", limit: 1
    t.string "name_last", limit: 50
    t.string "name_first", limit: 50
    t.text "alternate_address_1"
    t.text "alternate_address_2"
    t.string "alternate_city", limit: 25
    t.string "alternate_zip", limit: 15
    t.string "business_fax", limit: 25
    t.string "business_phone", limit: 25
    t.string "employee_id", limit: 25
    t.string "financial_advisor_id", limit: 25
    t.integer "fk_alternate_us_state_id"
    t.integer "fk_branch_id"
    t.integer "fk_country_id"
    t.integer "fk_title1_id"
    t.integer "fk_title2_id"
    t.integer "fk_region_id"
    t.integer "fk_area_id"
    t.string "assistant_email", limit: 100
    t.integer "fk_roletitle_id"
    t.integer "fk_client_id"
    t.integer "fkTitle3ID"
    t.index ["fk_area_id"], name: "fk_area_id"
    t.index ["fk_branch_id"], name: "fk_branch_id"
    t.index ["fk_region_id"], name: "fk_region_id"
  end

  create_table "login", primary_key: "pk_id", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "login_date"
    t.integer "fk_user_id", null: false
    t.string "action", limit: 50
  end

  create_table "mediatype", primary_key: "pkid", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 100, null: false
  end

  create_table "order_status_tracker", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_order_status_id"
    t.datetime "date_submitted"
    t.integer "fk_order_id"
  end

  create_table "page", primary_key: "pkid", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "duration", null: false
    t.string "is_master", limit: 1, null: false
    t.integer "templateID", null: false
    t.string "preview", default: "", null: false
    t.integer "sortOrder"
  end

  create_table "page_content", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 100
    t.text "wo_html"
    t.text "wo_wod"
    t.string "is_personalized", limit: 1
  end

  create_table "page_to_headline_assignment", primary_key: ["cpkfk_headline_id", "cpkfk_page_content_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "headline_sort_order"
    t.integer "cpkfk_headline_id", default: 0, null: false
    t.integer "cpkfk_page_content_id", default: 0, null: false
  end

  create_table "portrait_image", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "date_uploaded"
    t.decimal "file_size", precision: 15, scale: 3
    t.string "file_type", limit: 25
    t.string "filename"
    t.integer "fk_order_id"
    t.integer "fk_userinfo_id"
    t.decimal "height", precision: 9, scale: 3
    t.string "orig_filename"
    t.decimal "width", precision: 9, scale: 3
    t.string "isUserDefault", limit: 1
  end

  create_table "publication_type", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50
  end

  create_table "registered_component", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "admin_display_name"
    t.string "component_name"
    t.text "page_description"
  end

  create_table "registered_component_html", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "text_data"
    t.datetime "date_created"
    t.datetime "date_modified"
    t.string "display_name", limit: 150
    t.integer "fk_component_id"
    t.string "name", limit: 150
    t.integer "sort_order"
  end

  create_table "roletitle", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 50
    t.integer "fk_role_id", default: 0, null: false
  end

  create_table "saved_publication", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "contact_name", limit: 100
    t.string "contact_phone", limit: 15
    t.string "contact_email_address", limit: 50
    t.datetime "date_created"
    t.integer "fk_creator_id"
    t.integer "fk_publication_type_id"
    t.string "is_active", limit: 1
    t.string "publication_name", limit: 100
  end

  create_table "template_form_field", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "display_name", limit: 100
    t.integer "fk_field_type_id"
    t.integer "fk_template_id"
    t.string "layer_name"
    t.string "is_visible", limit: 1
    t.integer "fk_data_ref_id"
    t.integer "fk_group_id"
    t.integer "x_position"
    t.integer "y_position"
    t.text "default_text"
    t.string "default_is_visible", limit: 1
    t.text "instructions"
    t.text "text_to_replace"
    t.string "width", limit: 10
    t.string "height", limit: 10
    t.string "show_designations", limit: 1
    t.string "prepopulate_field", limit: 150
    t.string "is_all_caps", limit: 1
    t.string "show_seminar", limit: 1
    t.string "isRequired", limit: 1
    t.string "validatePattern"
    t.string "showEmailInstructions", limit: 1
    t.string "showInsuranceInstructions", limit: 1
    t.string "showNameInstructions", limit: 1
    t.string "showSpeakerInstructions", limit: 1
  end

  create_table "template_form_field_group", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "group_name", limit: 50
    t.integer "fk_template_id"
  end

  create_table "template_form_field_stage_data", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "display_name", limit: 100
    t.integer "fk_field_type_id"
    t.integer "fk_template_id"
    t.string "layer_name"
    t.string "is_visible", limit: 1
    t.integer "fk_data_ref_id"
    t.integer "fk_group_id"
    t.integer "x_position"
    t.integer "y_position"
    t.text "default_text"
    t.string "default_is_visible", limit: 1
    t.text "instructions"
    t.text "text_to_replace"
    t.string "width", limit: 10
    t.string "height", limit: 10
    t.string "show_designations", limit: 1
    t.string "prepopulate_field", limit: 150
    t.string "is_all_caps", limit: 1
  end

  create_table "tff_to_tffgroup", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "pk_id"
    t.integer "pk_id1"
  end

  create_table "title", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50
    t.integer "sort_order"
    t.string "is_active", limit: 1
    t.string "is_title_1", limit: 1
    t.string "is_title_2", limit: 1
    t.string "is_title_3", limit: 1
  end

  create_table "title1", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 50
    t.integer "sort_order"
  end

  create_table "title2", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "is_active", limit: 1
    t.string "name", limit: 50
    t.integer "sort_order"
  end

  create_table "title3", primary_key: "pkID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "isActive", limit: 1
    t.string "name", limit: 250
    t.integer "sort_order"
  end

  create_table "us_state", primary_key: "pk_id", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "sort_order"
    t.string "abbreviation", limit: 5
    t.string "name", limit: 50
  end

  create_table "user_comments", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_creator_id", null: false
    t.integer "fk_user_id", null: false
    t.string "value", limit: 200
    t.datetime "date_created", null: false
  end

  create_table "user_info_to_branch", primary_key: ["cpkfk_branch_id", "cpkfk_user_info_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "cpkfk_branch_id", default: 0, null: false
    t.integer "cpkfk_user_info_id", default: 0, null: false
  end

  create_table "user_upload_log", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_user_id"
    t.string "type", limit: 100
    t.datetime "upload_date"
  end

  create_table "work_flow_activity_definition", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "activity_code_template"
    t.integer "fk_process_id"
    t.text "instance_initialization_code"
    t.string "is_active", limit: 1
    t.string "name", limit: 200
    t.integer "fk_previous_activity_id"
    t.integer "fk_next_activity_id"
    t.text "activity_code"
  end

  create_table "work_flow_activity_definition_tmp", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "activity_code_template"
    t.integer "fk_process_id"
    t.text "instance_initialization_code"
    t.string "is_active", limit: 1
    t.string "name", limit: 200
    t.integer "fk_previous_activity_id"
    t.integer "fk_next_activity_id"
    t.text "activity_code"
  end

  create_table "work_flow_activity_instance", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "fk_order_id"
    t.text "activity_code"
    t.integer "fk_definition_id"
    t.datetime "date_created"
    t.string "is_done", limit: 1
    t.string "is_cancelled", limit: 1
    t.integer "fk_previous_activity_id"
    t.integer "fk_next_activity_id"
    t.datetime "date_completed"
  end

  create_table "work_flow_process", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "end_condition_code"
    t.string "is_active", limit: 1
    t.string "name", limit: 200
    t.text "start_code"
    t.text "start_condition_code"
    t.integer "fk_parent_process_id"
    t.text "submit_code"
  end

  create_table "work_flow_process_tmp", primary_key: "pk_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "end_condition_code"
    t.string "is_active", limit: 1
    t.string "name", limit: 200
    t.text "start_code"
    t.text "start_condition_code"
    t.integer "fk_parent_process_id"
    t.text "submit_code"
  end

  create_table "work_flow_transition_condition", primary_key: ["cpkfk_predecessor_id", "cpkfk_successor_id"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.text "transitionCode"
    t.integer "cpkfk_predecessor_id", default: 0, null: false
    t.integer "cpkfk_successor_id", default: 0, null: false
    t.string "is_active", limit: 1
    t.string "name", limit: 200
  end

end
