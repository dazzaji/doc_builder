# == Schema Information
# Schema version: 20110206172912
#
# Table name: templates
#
#  id             :integer         not null, primary key
#  template       :string(255)
#  subcategory_id :integer
#  style_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#  article_id     :integer
#

class Template < ActiveRecord::Base
	belongs_to :subcategory
	#has_and_belongs_to_many :articles, :join_table => "templates_articles"
	belongs_to :article
end
