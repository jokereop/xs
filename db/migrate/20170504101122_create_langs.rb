class CreateLangs < ActiveRecord::Migration[5.0]
  def change
    create_table :langs do |t|
      
      t.text 		:name
      t.string 		:min
      t.integer 	:code
          
    end
  end
end
