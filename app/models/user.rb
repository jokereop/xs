class User < ApplicationRecord
	
	has_secure_password
	
	validates      :user_login, 		presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates      :user_email, 		presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
	validates      :password, length: { minimum: 8 }

    has_many      	:user_metum, 	dependent: :destroy
    has_many      	:user_balanse, 	dependent: :destroy
    belongs_to    	:user_status
	
    before_save { self.user_email = user_email.downcase }
    before_create :create_remember_token




  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end


