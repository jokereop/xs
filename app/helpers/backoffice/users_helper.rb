module Backoffice::UsersHelper
	def pages_url(id)
	    page_path(User.find(id).href)
	end
end
