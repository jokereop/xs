class Admin::PostsController < ApplicationController

	def index
		@post = post.all
	end

	def new
		@post = Post.new
		1.times { @post.post_metum.build}
	end

	def create
		@post = Post.new
		if @post.save
			if @post.post_metum.create post_params[:post_metum_attributes]['0']
				redirect_to @post
			end
			
		else 
		if @post.errors.any?
			puts @post.errors.full_messages.inspect
			end
			render :new
		end


end


	def post_params
		params.require(:post).permit(post_metum_attributes: [:id, :post_id, :title, :summary, :body, :lang_id])
		
	end
end