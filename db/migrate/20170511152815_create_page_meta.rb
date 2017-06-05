class CreatePageMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :page_meta do |t|
      t.belongs_to :page, index: true
      t.text :title
      t.text :summary
      t.text :text
      t.belongs_to :lang, index: true
      t.timestamps
    end
  end
end
