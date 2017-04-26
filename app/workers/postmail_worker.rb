class PostmailWorker

	include Sidekiq::Worker

	sidekiq_options retry: false

	def perform(post_id)
		PostMailer.post_send(post_id).deliver
	end

end