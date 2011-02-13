# == Schema Information
# Schema version: 20110206172912
#
# Table name: temp_docs
#
#  id         :integer         not null, primary key
#  articles   :text
#  sections   :text
#  provisions :text
#  blanks     :text
#  style_id   :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class TempDoc < ActiveRecord::Base
end
