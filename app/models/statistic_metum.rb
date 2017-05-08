class StatisticMetum < ApplicationRecord
	has_many    :statistic_pay, dependent: :destroy
	has_many    :statistic_aith, dependent: :destroy
end
