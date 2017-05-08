class CreateLabels < ActiveRecord::Migration[5.0]
  def change
    create_table :labels do |t|
      t.string :tips

      t.timestamps
    end
  end
end
