class Rate < ApplicationRecord
	has_many    :rates_meta_value, dependent: :destroy
end
