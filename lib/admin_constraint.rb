class AdminConstraint

	def matches?(request)
		user_id = request.session["warden.user.user.key"][0]
    	user = User.find_by(id: user_id)
    	true if user.admin
    	rescue
    		false
  	end
end