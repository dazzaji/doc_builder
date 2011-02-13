# == Schema Information
# Schema version: 20110206172912
#
# Table name: styles
#
#  id         :integer         not null, primary key
#  style_name :string(255)
#  style_text :text
#  created_at :datetime
#  updated_at :datetime
#

class Style < ActiveRecord::Base
end
