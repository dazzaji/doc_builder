class CreateTemplates < ActiveRecord::Migration
  def self.up
    create_table :templates do |t|
		t.string "template"
		t.references :subcategory
		t.references :style
		t.timestamps
    end
	add_index(:subcategories, :id)
	add_index(:styles, :id)
  end

  def self.down
    drop_table :templates
  end
end
