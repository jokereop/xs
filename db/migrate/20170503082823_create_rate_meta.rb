class CreateRateMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_meta do |t|

      t.string :value
    end
  end
end
