class CreateRateMetum < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_metum do |t|

      t.string :value
    end
  end
end
