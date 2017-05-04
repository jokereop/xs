class User < ApplicationRecord

	            has_many      :user_metum
                has_many      :user_balanse
                belongs_to    :user_status
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end