class Admin::PostsController < ApplicationController


  def index
    @posts = Admin::PostMetum.
          where('`post_id` != 0')
          .select("
            
            post_id,
            title, 
            summary
            
            ").
          where(lang_id: lng).all
  end

  def new
    @post = Admin::Post.new
    1.times { @post.post_metum.build}
  end


  def create
    @post= Admin::Post.new post_params
    if @post.save
        redirect_to post_path @post
    else render :new
    end
  end

  def edit
    @post = Admin::Post.find(params[:id])
  end

  def update
    @post = Admin::Post.find(params[:id])
    if @post.update_attributes(post_params)
        redirect_to post_path @post
    else render :edit
    end
  end

  def destroy
  end
  def show
    @post=Admin::Post.find(params[:id])
  end

  private
    def post_params
      params.require(:admin_post).permit(:id, post_metum_attributes: [:id, :post_id, :title, :summary, :body, :lang_id])
    end


end
