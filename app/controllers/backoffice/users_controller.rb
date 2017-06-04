class Backoffice::UsersController < ApplicationController
  
  before_action :signed_in_user
  before_action :correct_user



  def show
		@user=Backoffice::User.find(params[:id])
  end

  def edit
    @user = Backoffice::User.find(params[:id])
  end

  def update
    @user = Backoffice::User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end



    private
      def user_params
        params.require(:backoffice_user).permit(:user_nicename, :user_login, :user_email, :password, :password_confirmation)
      end

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end

end