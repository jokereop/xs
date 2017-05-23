class UserMetumValue < ApplicationRecord
	
	has_many      :user_metum, dependent: :destroy
	
end
