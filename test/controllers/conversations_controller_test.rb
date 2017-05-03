require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
	include Devise::Test::IntegrationHelpers
	def setup
   		@user = User.new(:name => 'newBoy', :email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
		@user.save
   		sign_in @user
      	@user1 = User.new(:name => 'newBoy1', :email => 'test@exa.com', :password => 'password', :password_confirmation => 'password')
      	@user1.save
	end

   test "should get index" do
   	get conversations_path
    assert_response :success
   end

   test "create new message" do
   	post conversations_path, params: {user_id: @user1.id, body: "asd", subject: @user1.name}
   	recipient = @user.send_message(@user1, "asd", @user1.name)
  	assert_redirected_to conversation_path(1)
  end
end
