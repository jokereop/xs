class PaymentSystem < ApplicationRecord
	has_many :user_balanse
	has_many :payment_meta
	has_many :payment_datum
end
