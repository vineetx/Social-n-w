require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
   include Devise::Test::IntegrationHelpers
	def setup
   		@user = User.new(:name => 'newBoy', :email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
		@user.save
   		sign_in @user
      	@user1 = User.new(:name => 'newBoy1', :email => 'test@exa.com', :password => 'password', :password_confirmation => 'password')
      	@user1.save
	end
end
