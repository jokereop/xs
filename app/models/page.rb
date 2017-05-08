class Page < ApplicationRecord
	has_many    :page_metum, dependent: :destroy
end
