# == Schema Information
# Schema version: 20110206172912
#
# Table name: blanks
#
#  id             :integer         not null, primary key
#  blank          :text
#  intro_question :string(255)
#  provision_id   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Blank < ActiveRecord::Base

	has_and_belongs_to_many :provisions, :join_table => "provisions_blanks"

end
