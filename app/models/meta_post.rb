class MetaPost < ApplicationRecord
	belongs_to    :post
	belongs_to    :lang
end
