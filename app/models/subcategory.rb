# == Schema Information
# Schema version: 20110206172912
#
# Table name: subcategories
#
#  id          :integer         not null, primary key
#  subcategory :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  article_id  :integer
#

class Subcategory < ActiveRecord::Base

	belongs_to :category
	has_many :templates
	has_many :articles, :through => :templates

end
