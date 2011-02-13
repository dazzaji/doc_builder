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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110212200529) do

  create_table "articles", :force => true do |t|
    t.string   "article"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subcategory_id"
    t.integer  "section_id"
  end

  add_index "articles", ["id"], :name => "index_articles_on_id"

  create_table "articles_sections", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "section_id"
  end

  add_index "articles_sections", ["article_id", "section_id"], :name => "index_articles_sections_on_article_id_and_section_id"

  create_table "blanks", :force => true do |t|
    t.text     "blank"
    t.string   "intro_question"
    t.integer  "provision_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["id"], :name => "index_categories_on_id"

  create_table "documents", :force => true do |t|
    t.text     "document_text"
    t.integer  "user_id"
    t.integer  "style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provisions", :force => true do |t|
    t.text     "provision"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provisions", ["id"], :name => "index_provisions_on_id"

  create_table "provisions_blanks", :id => false, :force => true do |t|
    t.integer "provision_id"
    t.integer "blank_id"
  end

  add_index "provisions_blanks", ["provision_id", "blank_id"], :name => "index_provisions_blanks_on_provision_id_and_blank_id"

  create_table "sections", :force => true do |t|
    t.string   "section"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["id"], :name => "index_sections_on_id"

  create_table "sections_provisions", :id => false, :force => true do |t|
    t.integer "section_id"
    t.integer "provision_id"
  end

  add_index "sections_provisions", ["section_id", "provision_id"], :name => "index_sections_provisions_on_section_id_and_provision_id"

  create_table "styles", :force => true do |t|
    t.string   "style_name"
    t.text     "style_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "styles", ["id"], :name => "index_styles_on_id"

  create_table "subcategories", :force => true do |t|
    t.string   "subcategory"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  add_index "subcategories", ["id"], :name => "index_subcategories_on_id"

  create_table "temp_docs", :force => true do |t|
    t.text     "articles"
    t.text     "sections"
    t.text     "provisions"
    t.text     "blanks"
    t.integer  "style_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string   "template"
    t.integer  "subcategory_id"
    t.integer  "style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  add_index "templates", ["id"], :name => "index_templates_on_id"

  create_table "templates_articles", :id => false, :force => true do |t|
    t.integer "template_id"
    t.integer "article_id"
  end

  add_index "templates_articles", ["template_id", "article_id"], :name => "index_templates_articles_on_template_id_and_article_id"

  create_table "users", :force => true do |t|
    t.string   "first_name",      :limit => 40
    t.string   "second_name",     :limit => 40
    t.string   "third_name",      :limit => 40
    t.string   "organization",    :limit => 100
    t.string   "email",                          :null => false
    t.string   "phone_number"
    t.string   "username",        :limit => 40
    t.string   "hashed_password"
    t.string   "salt",            :limit => 40
    t.string   "role"
    t.string   "client_role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["id"], :name => "index_users_on_id"

end
