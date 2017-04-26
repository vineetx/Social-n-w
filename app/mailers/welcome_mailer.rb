class WelcomeMailer < ApplicationMailer

	def welcome_send(user)
		@user = User.find(user)
		mail to: @user.email, subject: "Welcome aboard"
	end
end