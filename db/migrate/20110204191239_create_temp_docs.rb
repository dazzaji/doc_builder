class CreateTempDocs < ActiveRecord::Migration
  def self.up
    create_table :temp_docs do |t|
		t.text "articles"
		t.text "sections"
		t.text "provisions"
		t.text "blanks"
		t.references :style
		t.references :user
		t.timestamps
    end
	#add_index(:styles, :id)
	#add_index(:users, :id)
  end

  def self.down
    drop_table :temp_docs
  end
end
