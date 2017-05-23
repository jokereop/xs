require 'rails_helper'

	describe User do

		before { @user = User.new(	user_login: "EJon", user_email: "EJon@example.com", user_status_id: 2,
                   					password: "passwoR8", password_confirmation: "passwoR8" ) }

		subject { @user }

		it { should respond_to(:user_login) }
		it { should respond_to(:user_email) }
		it { should respond_to(:user_status_id) }
		it { should respond_to(:password_digest) }
		it { should respond_to(:password) }
		it { should respond_to(:password_confirmation) }

		it { should be_valid }



#     PASSWORD

	  describe "when password is not present" do
	    before { @user.password = @user.password_confirmation = "" }
	    it { should_not be_valid }
	  end

	describe "when password doesn't match confirmation" do
	  before { @user.password_confirmation = "MisPasswoR8" }
	  it { should_not be_valid }
	end

#     LOGIN

	describe "Login is not present" do
	    before { @user.user_login = " " }
	    it { should_not be_valid }
	end
  	describe "when name is too long" do
	    before { @user.user_login =  "a" * 31 }
	    it { should_not be_valid }
  	end


#     EMAIL

	describe "Email is not present" do
    	before { @user.user_email = " " }
    	it { should_not be_valid }
  	end

	describe "when email format is invalid" do
	    it "should be invalid" do
	      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
	                     foo@bar_baz.com foo@bar+baz.com]
	      addresses.each do |invalid_address|
	        @user.user_email = invalid_address
	        expect(@user).not_to be_valid
	      end
	    end
	  end

	describe "when email format is valid" do
	it "should be valid" do
	  addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
	  addresses.each do |valid_address|
		    @user.user_email = valid_address
		    expect(@user).to be_valid
		  end
		end
	end

	describe "when email address is already taken" do
	    before do
	      user_with_same_user_email = @user.dup
	      user_with_same_user_email.save
		end
	    it { should_not be_valid }
  	end

#     AUNTHENTICATE

it { should respond_to(:authenticate) }


describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(user_email: @user.user_email) }
	
    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_falsey }
    end
  end



end