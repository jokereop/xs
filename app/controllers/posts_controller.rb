class PostsController < ApplicationController

	def show

		@post =Post.find(params[:id])
			.post_metum.
				select("
					title, 
					summary, 
					body
				").
				where(
					lang_id: '1'
				).take
	end

	def index
		@posts = PostMetum.
					where('`post_id` != 0')
					.select("
						
						title, 
						summary
						
						").
					where(lang_id: '1').all
	end

	def new
		@post = Post.new
	end

end