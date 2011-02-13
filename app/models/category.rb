# == Schema Information
# Schema version: 20110206172912
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  category   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base

	has_many :subcategories

end
