class CreateMetaposts < ActiveRecord::Migration[5.0]
  def change
    create_table :metaposts do |t|

      t.timestamps
    end
  end
end
