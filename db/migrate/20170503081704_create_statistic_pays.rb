class CreateStatisticPays < ActiveRecord::Migration[5.0]
  def change
    create_table :statistic_pays do |t|

            t.belongs_to :statistic_metum, index: true
            t.belongs_to :user, index: true
            t.belongs_to :payment_system, index: true
            t.belongs_to :rate, index: true
            t.string :value
            t.datetime :datetime
            t.timestamps
            
    end
  end
end
