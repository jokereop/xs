class CreateRateBalances < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_balances do |t|

      t.timestamps
    end
  end
end
