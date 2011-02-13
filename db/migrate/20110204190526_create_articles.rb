class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
		t.string "article"
		t.references :template
		t.timestamps
    end
	add_index(:templates, :id)
  end

  def self.down
    drop_table :articles
  end
end
