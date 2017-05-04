class CreateStatisticAuths < ActiveRecord::Migration[5.0]
  def change
    create_table :statistic_auths do |t|

            t.belongs_to :statistic_meta, index: true
            t.belongs_to :user, index: true
            t.string :name
            t.string :ip
            t.datetime :datetime
            t.timestamps
    end
  end
end
