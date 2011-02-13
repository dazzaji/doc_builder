class ReDoM2MAssociations < ActiveRecord::Migration
  def self.up
	create_table :templates_articles, :id => false do |t|
		t.references :template
		t.references :article
	end
	
	create_table :articles_sections, :id => false do |t|
		t.references :article
		t.references :section
	end
	
	create_table :sections_provisions, :id => false do |t|
		t.references :section
		t.references :provision
	end
	
	create_table :provisions_blanks, :id => false do |t|
		t.references :provision
		t.references :blank
	end
	add_index(:templates_articles, [:template_id, :article_id])
	add_index(:articles_sections, [:article_id, :section_id])
	add_index(:sections_provisions, [:section_id, :provision_id])
	add_index(:provisions_blanks, [:provision_id, :blank_id])
end

  def self.down
	drop_table :provisions_blanks
	drop_table :sections_provisions
	drop_table :articles_sections
	drop_table :templates_articles
  end
end
