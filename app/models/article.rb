# == Schema Information
# Schema version: 20110206172912
#
# Table name: articles
#
#  id             :integer         not null, primary key
#  article        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  subcategory_id :integer
#  section_id     :integer
#

class Article < ActiveRecord::Base
	#belongs_to :template
	#has_and_belongs_to_many :templates, :join_table => "templates_articles"
	has_many :sections
	has_many :templates
	has_many :subcategories, :through => :templates
	
end
