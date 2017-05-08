class RateMetum < ApplicationRecord
	has_many    :rate_meta_value, dependent: :destroy
end
