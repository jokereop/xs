class Admin::MetaPostController < ApplicationController

  def index
  end

  def new
    @meta_post = MetaPost.new
  end

  def create
    puts params.inspect
    unless meta_post_params[:post_id]
       post = Post.new
       post.save
       params[:post_id]= post.id
    end
    puts params.inspect
    @meta_post=MetaPost.new meta_post_params
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def meta_post_params
      params.require(:meta_post).permit(:id, :post_id, :title, :summary, :body, :lang_id)
    end
end
