class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
		t.text "document_text"
		t.references :user
		t.references :style
		t.timestamps
    end
	#add_index(:users, :id)
	#add_index(:styles, :id)
  end

  def self.down
    drop_table :documents
  end
end
