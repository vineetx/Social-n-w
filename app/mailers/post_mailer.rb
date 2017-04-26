class PostMailer < ApplicationMailer
	def post_send(post_id)
		@post = Post.find(post_id)
		@user = @post.user
		mail to: @user.email, subject: "Welcome aboard"
	end
end
