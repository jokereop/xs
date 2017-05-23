class Lang < ApplicationRecord
	has_many    :label_metum, dependent: :destroy
	has_many    :page_metum, dependent: :destroy
	has_many 	:post_metum, dependent: :destroy
end
