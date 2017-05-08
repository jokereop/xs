class Lang < ApplicationRecord
	has_many    :label_metum, dependent: :destroy
	has_many    :page_metum, dependent: :destroy
	has_many    :meta_post, dependent: :destroy
end
