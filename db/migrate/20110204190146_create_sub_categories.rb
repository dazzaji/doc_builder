class CreateSubCategories < ActiveRecord::Migration
  def self.up
    create_table :subcategories do |t|
		t.string "subcategory"
		t.references :category
		t.timestamps
    end
	add_index(:categories, :id)
  end

  def self.down
    drop_table :subcategories
  end
end
