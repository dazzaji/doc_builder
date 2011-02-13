class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
		t.string "first_name", :limit => 40
		t.string "second_name", :limit => 40
		t.string "third_name", :limit => 40
		t.string "organization", :limit => 100
		t.string "email", :null => false
		t.string "phone_number"
		t.string "username", :limit => 40, :unique => true
		t.string "hashed_password" 
		t.string "salt", :limit => 40
		t.string "role"
		t.string "client_role" 
		t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
