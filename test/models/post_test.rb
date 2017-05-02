require 'test_helper'

class PostTest < ActiveSupport::TestCase
	#include Devise::Test::ControllerHelpers
	test "presence of content" do
   		post = Post.new
     	refute post.save
   end
end


  # test "the truth" do
  #   assert true
  # end
