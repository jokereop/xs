module PagesHelper
	def pages_url(id)
		page 	= Page.find(id)
	    title 	= page.page_metum.select("title").where(lang_id: lng).take.title

	    '<a href="' + page_path(page.href) +'">'+ title +'</a>'
	end

	def lng
		lng = Lang.where(min: I18n.locale).select("id").take.id
	end
end

