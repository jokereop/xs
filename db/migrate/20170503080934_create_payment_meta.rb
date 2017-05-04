class CreatePaymentMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_meta do |t|

            t.belongs_to :payment_system, index: true
            t.string :name
            t.string :value
    end
  end
end
