class CreateRateMetaValues < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_meta_values do |t|

        t.belongs_to :rate_meta, index: true
        t.belongs_to :rate, index: true
        t.string :value
    end
  end
end
