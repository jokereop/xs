class PostsController < ApplicationController

	def show

		lng = Lang.where(min: I18n.locale).select("id").take.id

		@post =Post.find(params[:id])
			.post_metum.
				select("
					title, 
					summary, 
					body
				").
				where(lang_id: lng).take
	end

	def index

		lng = Lang.where(min: I18n.locale).select("id").take.id

		@posts = PostMetum.
					where('`post_id` != 0')
					.select("
						
						post_id,
						title, 
						summary
						
						").
					where(lang_id: lng).all


	end

end