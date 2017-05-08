class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :tips
      t.datetime :datetime

      t.timestamps
    end
  end
end
