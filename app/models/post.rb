class Post < ApplicationRecord
	has_many    :meta_posts, dependent: :destroy
	accepts_nested_attributes_for :meta_posts
end
