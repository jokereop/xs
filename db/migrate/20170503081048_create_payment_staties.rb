class CreatePaymentStaties < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_staties do |t|

        t.string :name
    end
  end
end
