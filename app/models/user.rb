# == Schema Information
# Schema version: 20110212200529
#
# Table name: users
#
#  id              :integer         not null, primary key
#  first_name      :string(40)
#  second_name     :string(40)
#  third_name      :string(40)
#  organization    :string(100)
#  email           :string(255)     not null
#  phone_number    :string(255)
#  username        :string(40)
#  hashed_password :string(255)
#  salt            :string(40)
#  role            :string(255)
#  client_role     :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'digest/sha2'
class User < ActiveRecord::Base

  attr_accessible 	:first_name, :second_name, :third_name, :phone_number, 
					:organization, :username, :email, :role, :client_role
  
  attr_accessor :password
  
  attr_protected :hashed_password, :salt
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :username, 	:presence => true,
						:length => { :maximum => 50 },
						:uniqueness => { :case_sensitive => false }
  validates :email, 	:presence => true,
						:format => { :with => email_regex, :on => :create },
						:uniqueness => { :case_sensitive => false }

  #only use the following validation upon save
  validates :password, 	:length => { :within => 8..25, :on => :create }

  #use callbacks for password hashing, etc.  
  before_save :encrypt_password
  after_save :clear_password

  def correct_password?(password="")
	hashed_password == encrypt(password, salt)
  end
  
  def self.authenticate(username="", password="")
	user = User.find_by_username(username)
	return nil if user.nil?
	return user if user.correct_password?(password)
	return false
  end
  
  private
  
	def encrypt_password
		#Whenever :password has a value, hash it
		unless password.blank?
			#have to use self here
			self.salt = User.make_salt(username) if salt.blank?
			self.hashed_password = encrypt(password, salt)
		end
	end

	def encrypt(password="", salt="")
		Digest::SHA2.hexdigest("here in the Tundra, time is #{salt} when password was #{password}")
	end
	
	def self.make_salt(username="")
		Digest::SHA2.hexdigest("#{Time.now.utc} for the house of the following dorkus named #{username}")
	end
	
	def clear_password
		#clear for security purposes since using :password as instance variable
		self.password = nil
	end
						
end
