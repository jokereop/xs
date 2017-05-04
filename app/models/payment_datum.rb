class PaymentDatum < ApplicationRecord
    belongs_to    :user
    belongs_to    :payment_system
    belongs_to    :payment_metum
    belongs_to    :payment_value
    belongs_to    :payment_statys
end
