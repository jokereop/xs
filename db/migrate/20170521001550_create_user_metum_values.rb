class CreateUserMetumValues < ActiveRecord::Migration[5.1]
  def change
    create_table :user_metum_values do |t|

    	t.text 		:name
	
    end
  end
end
