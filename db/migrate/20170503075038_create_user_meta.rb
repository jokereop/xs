class CreateUserMeta < ActiveRecord::Migration[5.0]
  def change
    create_table :user_meta do |t|

        t.belongs_to :user, index: true
        t.string :value
    end
  end
end
