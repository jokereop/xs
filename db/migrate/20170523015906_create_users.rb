class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

    	t.string 	:user_login, unique: true
		t.string 	:password_digest
		t.text 		:user_nicename
		t.string	:user_email, unique: true
		t.text 		:user_activation_key
		t.text 		:user_recovery_key
		t.text 		:user_aktiv_key
		t.string 	:user_url
		t.belongs_to :user_status, index: true

      t.timestamps
    end
  end
end


