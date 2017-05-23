class Admin::Page < ApplicationRecord
	self.table_name="pages"
	has_many    :page_metum
	accepts_nested_attributes_for :page_metum
end
