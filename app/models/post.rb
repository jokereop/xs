class Post < ApplicationRecord
	has_many    :post_metum, dependent: :destroy
end
