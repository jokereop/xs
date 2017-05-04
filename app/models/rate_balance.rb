class RateBalance < ApplicationRecord
	belongs_to    :user
	belongs_to    :payment_meta
end
