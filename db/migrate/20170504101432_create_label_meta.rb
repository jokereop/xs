class CreateLabelMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :label_meta do |t|
      t.belongs_to :label, index: true
      t.text :text
      t.belongs_to :lang, index: true

      t.timestamps
    end
  end
end
