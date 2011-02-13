class CreateStyles < ActiveRecord::Migration
  def self.up
    create_table :styles do |t|
		t.string "style_name"
		t.text "style_text"
		t.timestamps
    end
  end

  def self.down
    drop_table :styles
  end
end
