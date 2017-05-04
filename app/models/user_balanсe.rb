class UserBalanсe < ApplicationRecord
  belongs_to :user
  belongs_to :payment_system
end
