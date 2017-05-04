class StatisticMetum < ApplicationRecord
	has_many    :statistic_pay
	has_many    :statistic_aith
end
