module ApplicationHelper
	def avatar_url(user)
		if user.image
			"http://graph.facebook.com/#{user.uid}/picture?type=large"
		else
			gravatar_id = Digest::MD5::hexdigest(user.email).dohttps://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150wncase
			return ""
		end
	end
end
