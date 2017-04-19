class HomeController < ApplicationController
	def index
		@post = Post.new
		@posts = Post.all.order("created_at DESC")
	end

	def profile

		@user = User.find_by(id: params[:format])
		
	end
end
