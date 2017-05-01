require 'test_helper'

class PostTest < ActiveSupport::TestCase
	include Devise::Test::ControllerHelpers
	include FactoryGirl::Syntax::Methods

	def setup
		user = User.last
		sign_in user
	end
   test "presence of image" do
   		post = Post.new
   		post.content = "wassup"
     	refute post.save
   end
end


  # test "the truth" do
  #   assert true
  # end
