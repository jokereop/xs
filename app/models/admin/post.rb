class Admin::Post < ApplicationRecord
	self.table_name="posts"
	has_many    :post_metum
	accepts_nested_attributes_for :post_metum
end
