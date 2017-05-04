class CreateUserBalances < ActiveRecord::Migration[5.0]
  def change
    create_table :user_balanсes do |t|
        t.belongs_to :user, index: true
        t.belongs_to :payment_system, index: true
        t.string :value
    end
  end
end
