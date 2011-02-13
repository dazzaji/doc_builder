# == Schema Information
# Schema version: 20110206172912
#
# Table name: provisions
#
#  id         :integer         not null, primary key
#  provision  :text
#  section_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Provision < ActiveRecord::Base

	belongs_to :section
	has_and_belongs_to_many :blanks, :join_table => "provisions_blanks"

end
