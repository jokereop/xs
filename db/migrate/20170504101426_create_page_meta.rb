class CreatePageMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :page_meta do |t|
      t.belongs_to :page, index: true
      t.text :text
      t.belongs_to :lang, index: true

      t.timestamps
    end
  end
end
