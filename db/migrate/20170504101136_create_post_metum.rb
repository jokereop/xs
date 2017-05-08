class CreatePostMetum < ActiveRecord::Migration[5.0]
  def change
    create_table :post_metum do |t|
      t.belongs_to :post, index: true
      t.string :title
      t.text :summary
      t.text :body
      t.belongs_to :lang, index: true

      t.timestamps

    end
  end
end
