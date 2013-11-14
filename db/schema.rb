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

ActiveRecord::Schema.define(version: 20131112154951) do

  create_table "commentmeta", force: true do |t|
    t.integer  "meta_id"
    t.integer  "comment_id"
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "comment_ID"
    t.integer  "comment_post_ID"
    t.text     "comment_author"
    t.string   "comment_author_email"
    t.string   "comment_author_url"
    t.string   "comment_author_IP"
    t.datetime "comment_date"
    t.datetime "comment_date_gmt"
    t.text     "comment_content"
    t.integer  "comment_karma"
    t.string   "comment_approved"
    t.string   "comment_agent"
    t.string   "comment_type"
    t.integer  "comment_parent"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "link_id"
    t.string   "link_url"
    t.string   "link_name"
    t.string   "link_image"
    t.string   "link_target"
    t.string   "link_description"
    t.string   "link_visible"
    t.integer  "link_owner"
    t.integer  "link_rating"
    t.date     "link_updated"
    t.string   "time"
    t.string   "link_rel"
    t.text     "link_notes"
    t.string   "link_rss"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.integer  "option_id"
    t.integer  "blog_id"
    t.string   "option_name"
    t.text     "option_value"
    t.string   "autoload"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postmeta", force: true do |t|
    t.integer  "meta_id"
    t.integer  "post_id"
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "post_id"
    t.integer  "post_author"
    t.datetime "post_date"
    t.datetime "post_date_gmt"
    t.text     "post_content"
    t.text     "post_title"
    t.text     "post_excerpt"
    t.string   "post_status"
    t.string   "comment_status"
    t.string   "ping_status"
    t.string   "post_password"
    t.string   "post_name"
    t.text     "to_ping"
    t.text     "pinged"
    t.datetime "post_modified"
    t.datetime "post_modified_gmt"
    t.text     "post_content_filtered"
    t.integer  "post_parent"
    t.string   "guid"
    t.integer  "menu_order"
    t.string   "post_type"
    t.string   "post_mime_type"
    t.integer  "comment_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "term_relationships", force: true do |t|
    t.integer  "object_id"
    t.integer  "term_taxonomy_id"
    t.integer  "term_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "term_taxonomies", force: true do |t|
    t.integer  "term_taxonomy_id"
    t.integer  "term_id"
    t.string   "taxonomy"
    t.text     "description"
    t.integer  "parent"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", force: true do |t|
    t.integer  "term_id"
    t.string   "name"
    t.string   "slug"
    t.integer  "term_group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usermeta", force: true do |t|
    t.integer  "umeta_id"
    t.integer  "user_id"
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "user_id"
    t.string   "user_login"
    t.string   "user_pass"
    t.string   "user_nicename"
    t.string   "user_email"
    t.string   "user_url"
    t.datetime "user_registered"
    t.string   "user_activation_key"
    t.integer  "user_status"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
  end

  add_index "users", ["user_email"], name: "index_users_on_user_email", unique: true
  add_index "users", ["user_login"], name: "index_users_on_user_login", unique: true

end
