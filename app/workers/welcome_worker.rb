class WelcomeWorker
	include Sidekiq::Worker

	sidekiq_options retry: false

	def perform(user)
		WelcomeMailer.welcome_send(user).deliver
	end
end