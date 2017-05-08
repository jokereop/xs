class Admin::MetapostsController < ApplicationController

  def index
  end

  def new
    @metapost = Admin::Metapost.new
  end

  def create
    puts params.inspect
    unless metapost_params[:post_id]
       post = Post.new
       post.save
       params[:post_id]= post.id
    end
    puts params.inspect
    @metapost=Admin::Metapost.new metapost_params
    if @metapost.save
      redirect_to admin_metapost_path @metapost
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def show
    @metapost=Admin::Metapost.find(params[:id])
  end

  private
    def metapost_params
      params.require(:admin_metapost).permit(:id)
    end
end
