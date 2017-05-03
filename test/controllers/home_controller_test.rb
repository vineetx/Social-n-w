require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
	include Devise::Test::IntegrationHelpers
	
	def setup
   		@user = User.new(:name => 'newBoy', :email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
		  @user.save
   		sign_in @user
      @user1 = User.new(:name => 'newBoy1', :email => 'test@exa.com', :password => 'password', :password_confirmation => 'password')
      @user1.save
	end

   test "should get home" do
     get root_path
     assert_response :success
   end

   test "should get user" do
    post home_search_path, params: {search: {Search: 'newBoy1'}}
    assert_redirected_to profile_path(@user1.id)
  end

end
