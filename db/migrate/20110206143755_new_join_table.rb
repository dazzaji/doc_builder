class NewJoinTable < ActiveRecord::Migration
  def self.up
	add_column(:templates, "article_id", :integer)
	add_column(:articles, "subcategory_id", :integer)
	add_column(:articles, "section_id", :integer)
	add_column(:subcategories, "article_id", :integer)
  end

  def self.down
	remove_column(:templates, "article_id", :integer)
	remove_column(:articles, "subcategory_id", :integer)
	remove_column(:articles, "section_id", :integer)
	remove_column(:subcategories, "article_id", :integer)
  end
end
