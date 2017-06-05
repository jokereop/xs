class PagesController < ApplicationController

	def show
		
		@page =Page.find_by(href: params[:id])
			.page_metum.
				select("
					id, 
					text,
					title
				").
				where(
					lang_id: lng
				).take
	end

	def index

	    @pages = PageMetum.
	          where('`page_id` != 0')
	          .select("
	            
	            page_id,
	            text,
				title
	            
	            ").
	          where(lang_id: lng).all
	end

end