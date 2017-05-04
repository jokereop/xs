class StatisticAuth < ApplicationRecord
	belongs_to    :statistic_metum
	belongs_to    :user
end
