class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|

    	t.string :name
    end
  end
end
