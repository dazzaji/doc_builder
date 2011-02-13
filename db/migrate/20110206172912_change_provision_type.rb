class ChangeProvisionType < ActiveRecord::Migration
  def self.up
	change_column(:provisions, :provision, :text)
  end

  def self.down
  end
end
