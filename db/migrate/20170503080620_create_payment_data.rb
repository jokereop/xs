class CreatePaymentData < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_data do |t|

            t.belongs_to :user, index: true
            t.belongs_to :payment_system, index: true
            t.belongs_to :payment_meta, index: true
            t.string :value
            t.belongs_to :payment_value, index: true
            t.belongs_to :payment_statys, index: true
    end
  end
end
