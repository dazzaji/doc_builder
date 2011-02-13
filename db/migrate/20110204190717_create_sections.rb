class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
		t.string "section"
		t.references :article
		t.timestamps
    end
	add_index(:articles, :id)
  end

  def self.down
    drop_table :sections
  end
end
