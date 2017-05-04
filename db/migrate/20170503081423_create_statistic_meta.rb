class CreateStatisticMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :statistic_meta do |t|

    t.string :value
    end
  end
end
