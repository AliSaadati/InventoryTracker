class User < ActiveRecord::Base
	attr_accessor :verify_pass, :username, :password, :email, :admin
	
	has_many :orders
end
