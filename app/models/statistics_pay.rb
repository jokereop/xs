class StatisticPay < ApplicationRecord
	belongs_to    :statistic_metum
	belongs_to    :user
	belongs_to    :payment_system
	belongs_to    :rate
end
