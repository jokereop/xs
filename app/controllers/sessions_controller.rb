class SessionsController < ApplicationController
  def new
  end

  	def create
	  	
	  	user = User.find_by(user_email: params[:session][:email].downcase)
	  	if user && user.authenticate(params[:session][:password])
	  		sign_in user
	    	redirect_to backoffice_user_path user
	  	else
	  		flash.now[:error] = t('invalid_auth')
	    	render :new
	  	end
	end


  def destroy
    sign_out
    redirect_to root_url
  end
end
