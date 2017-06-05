class Backoffice::UserMetaController < ApplicationController
  def index
    @user_metum = Backoffice::UserMetum.where(user_id: 1).select("
      id,
      value
      ").all
  end

  def add
    @user_metum = Backoffice::UserMetum.where(user_id: 1).select("
      id,
      value
      ").all
  end

end
