class CreateBlanks < ActiveRecord::Migration
  def self.up
    create_table :blanks do |t|
		t.text "blank"
		t.string "intro_question"
		t.references :provision
		t.timestamps
    end
	add_index(:provisions, :id)
  end

  def self.down
    drop_table :blanks
  end
end
