class CreateProvisions < ActiveRecord::Migration
  def self.up
    create_table :provisions do |t|
		t.text "provision"
		t.references :section
		t.timestamps
    end
	add_index(:sections, :id)
  end

  def self.down
    drop_table :provisions
  end
end
