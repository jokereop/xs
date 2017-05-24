class Backoffice::UsersController < ApplicationController
  def show
  	@user=Backoffice::User.find(params[:id])
  end

  def edit
  end

  def update
  end
end
