# == Schema Information
# Schema version: 20110206172912
#
# Table name: sections
#
#  id         :integer         not null, primary key
#  section    :string(255)
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Section < ActiveRecord::Base

	belongs_to :article
	has_many :provisions

end
