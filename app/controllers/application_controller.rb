class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
	include SessionsHelper

	before_action :set_locale
  	
  	def lng
		l=Lang.where(min: I18n.locale).select("id").take.id	
	end
	
	private

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
		{ :locale => I18n.locale }
	end


end