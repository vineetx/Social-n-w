class HomeController < ApplicationController
	def index
		@post = Post.new
		@posts = Post.all.order("created_at DESC")
	end

	def profile
		@user = User.friendly.find(params[:format])
	end

	def search

		@search = User.find_by(name: params[:search][:Search])
		if @search
		redirect_to profile_path(@search.id)
	else
		redirect_to root_path
	end
	end
end
