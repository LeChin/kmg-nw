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

ActiveRecord::Schema.define(version: 20190310174727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_type_workouts", force: :cascade do |t|
    t.integer "class_type_id"
    t.integer "workout_id"
  end

  create_table "class_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_schedules", force: :cascade do |t|
    t.integer "day_id"
    t.integer "schedule_id"
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fae_changes", force: :cascade do |t|
    t.integer  "changeable_id"
    t.string   "changeable_type"
    t.integer  "user_id"
    t.string   "change_type"
    t.text     "updated_attributes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["changeable_id"], name: "index_fae_changes_on_changeable_id", using: :btree
    t.index ["changeable_type"], name: "index_fae_changes_on_changeable_type", using: :btree
    t.index ["user_id"], name: "index_fae_changes_on_user_id", using: :btree
  end

  create_table "fae_files", force: :cascade do |t|
    t.string   "name"
    t.string   "asset"
    t.string   "fileable_type"
    t.integer  "fileable_id"
    t.integer  "file_size"
    t.integer  "position",      default: 0
    t.string   "attached_as"
    t.boolean  "on_stage",      default: true
    t.boolean  "on_prod",       default: false
    t.boolean  "required",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attached_as"], name: "index_fae_files_on_attached_as", using: :btree
    t.index ["fileable_type", "fileable_id"], name: "index_fae_files_on_fileable_type_and_fileable_id", using: :btree
  end

  create_table "fae_images", force: :cascade do |t|
    t.string   "name"
    t.string   "asset"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.string   "alt"
    t.string   "caption"
    t.integer  "position",       default: 0
    t.string   "attached_as"
    t.boolean  "on_stage",       default: true
    t.boolean  "on_prod",        default: false
    t.integer  "file_size"
    t.boolean  "required",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attached_as"], name: "index_fae_images_on_attached_as", using: :btree
    t.index ["imageable_type", "imageable_id"], name: "index_fae_images_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "fae_options", force: :cascade do |t|
    t.string   "title"
    t.string   "time_zone"
    t.string   "colorway"
    t.string   "stage_url"
    t.string   "live_url"
    t.integer  "singleton_guard"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["singleton_guard"], name: "index_fae_options_on_singleton_guard", unique: true, using: :btree
  end

  create_table "fae_roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fae_static_pages", force: :cascade do |t|
    t.string   "title"
    t.integer  "position",   default: 0
    t.boolean  "on_stage",   default: true
    t.boolean  "on_prod",    default: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["slug"], name: "index_fae_static_pages_on_slug", using: :btree
  end

  create_table "fae_text_areas", force: :cascade do |t|
    t.string   "label"
    t.text     "content"
    t.integer  "position",         default: 0
    t.boolean  "on_stage",         default: true
    t.boolean  "on_prod",          default: false
    t.integer  "contentable_id"
    t.string   "contentable_type"
    t.string   "attached_as"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attached_as"], name: "index_fae_text_areas_on_attached_as", using: :btree
    t.index ["contentable_id"], name: "index_fae_text_areas_on_contentable_id", using: :btree
    t.index ["contentable_type"], name: "index_fae_text_areas_on_contentable_type", using: :btree
    t.index ["on_prod"], name: "index_fae_text_areas_on_on_prod", using: :btree
    t.index ["on_stage"], name: "index_fae_text_areas_on_on_stage", using: :btree
    t.index ["position"], name: "index_fae_text_areas_on_position", using: :btree
  end

  create_table "fae_text_fields", force: :cascade do |t|
    t.string   "contentable_type"
    t.integer  "contentable_id"
    t.string   "attached_as"
    t.string   "label"
    t.string   "content"
    t.integer  "position",         default: 0
    t.boolean  "on_stage",         default: true
    t.boolean  "on_prod",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attached_as"], name: "index_fae_text_fields_on_attached_as", using: :btree
    t.index ["contentable_type", "contentable_id"], name: "index_fae_text_fields_on_contentable_type_and_contentable_id", using: :btree
    t.index ["on_prod"], name: "index_fae_text_fields_on_on_prod", using: :btree
    t.index ["on_stage"], name: "index_fae_text_fields_on_on_stage", using: :btree
    t.index ["position"], name: "index_fae_text_fields_on_position", using: :btree
  end

  create_table "fae_users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role_id"
    t.boolean  "active"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["confirmation_token"], name: "index_fae_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_fae_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_fae_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_fae_users_on_role_id", using: :btree
    t.index ["unlock_token"], name: "index_fae_users_on_unlock_token", unique: true, using: :btree
  end

  create_table "free_trial_requests", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.string   "workout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "trial_time"
    t.string   "trial_day"
  end

  create_table "home_gallery_items", force: :cascade do |t|
    t.boolean  "live"
    t.integer  "position"
    t.integer  "static_page_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["live"], name: "index_home_gallery_items_on_live", using: :btree
    t.index ["position"], name: "index_home_gallery_items_on_position", using: :btree
    t.index ["static_page_id"], name: "index_home_gallery_items_on_static_page_id", using: :btree
  end

  create_table "instructor_workouts", force: :cascade do |t|
    t.integer "instructor_id"
    t.integer "workout_id"
    t.index ["instructor_id"], name: "index_instructor_workouts_on_instructor_id", using: :btree
    t.index ["workout_id"], name: "index_instructor_workouts_on_workout_id", using: :btree
  end

  create_table "instructors", force: :cascade do |t|
    t.boolean  "live"
    t.integer  "position"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "rank"
    t.text     "bio"
    t.text     "quote"
    t.string   "quote_attribution"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "slug"
    t.index ["live"], name: "index_instructors_on_live", using: :btree
    t.index ["position"], name: "index_instructors_on_position", using: :btree
  end

  create_table "media", force: :cascade do |t|
    t.date     "date"
    t.string   "media_type"
    t.string   "video_link"
    t.integer  "position"
    t.boolean  "live"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "featured_on_home", default: false
    t.string   "name"
    t.index ["date"], name: "index_media_on_date", using: :btree
    t.index ["live"], name: "index_media_on_live", using: :btree
    t.index ["position"], name: "index_media_on_position", using: :btree
  end

  create_table "news_items", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.text     "intro"
    t.text     "body"
    t.boolean  "live"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "youtube_link"
    t.string   "slug"
    t.index ["date"], name: "index_news_items_on_date", using: :btree
    t.index ["live"], name: "index_news_items_on_live", using: :btree
  end

  create_table "pricings", force: :cascade do |t|
    t.string   "level"
    t.string   "general_price"
    t.string   "public_safety_price"
    t.string   "time_free"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "static_page_id"
    t.integer  "position"
    t.string   "corporate_price"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "workout_id"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_time"], name: "index_schedules_on_end_time", using: :btree
    t.index ["start_time"], name: "index_schedules_on_start_time", using: :btree
    t.index ["workout_id"], name: "index_schedules_on_workout_id", using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "appointment_only"
    t.boolean  "live"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "slug"
    t.boolean  "show_on_landing"
    t.integer  "position"
    t.boolean  "trial_class",      default: false
    t.index ["appointment_only"], name: "index_workouts_on_appointment_only", using: :btree
    t.index ["live"], name: "index_workouts_on_live", using: :btree
  end

end
