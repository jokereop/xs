class PostsController < ApplicationController

	def show

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