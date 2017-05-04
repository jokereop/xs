class CreatePaymentSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_systems do |t|

      t.string :name
    end
  end
end
