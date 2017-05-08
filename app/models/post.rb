class Post < ApplicationRecord
	has_many    :post_metum, dependent: :destroy
	accepts_nested_attributes_for :post_metum
end
