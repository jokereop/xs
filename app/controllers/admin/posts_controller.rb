class Admin::PostsController < ApplicationController

	def index
		@post = post.all
	end

	def new
		@post = Post.new
		1.times { @post.post_metum.build}
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else render :new
		end
	end

	def post_params
		params.require(:post).permit(:name, post_metum_attributes: [:id, :post_id, :title, :summary, :body, :lang_id])
		
	end
end