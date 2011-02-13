# == Schema Information
# Schema version: 20110206172912
#
# Table name: documents
#
#  id            :integer         not null, primary key
#  document_text :text
#  user_id       :integer
#  style_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Document < ActiveRecord::Base
end
