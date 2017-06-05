module UsersHelper
	def gravatar_for(user)
	    gravatar_id = Digest::MD5::hexdigest(user.user_email.downcase)
	    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
	    image_tag(gravatar_url, alt: user.user_nicename, class: "gravatar")
  	end


	def user_url
	    remember_token = User.encrypt(cookies[:remember_token])
	    backoffice_user_path(User.find_by(remember_token: remember_token).id)
	end

end