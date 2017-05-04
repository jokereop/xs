class CreatePaymentValues < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_values do |t|

      t.string :name
    end
  end
end
