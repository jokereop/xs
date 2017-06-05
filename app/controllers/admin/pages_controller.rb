class Admin::PagesController < ApplicationController


  def index
    
    @pages = Admin::PageMetum.
          where('`page_id` != 0')
          .select("
            
            page_id,
            text,
            title
            
            ").
          where(lang_id: lng).all
  end

  def new
    @page = Admin::Page.new
    1.times { @page.page_metum.build}
  end


  def create
    @page= Admin::Page.new page_params
    if @page.save
        redirect_to admin_pages_url
    else render :new
    end
  end

  def edit
      @page = Admin::Page.find(params[:id])
  end

  def update
    @page = Admin::Page.find(params[:id])
    if @page.update_attributes(page_params)
        redirect_to admin_pages_url
    else render :edit
    end
  end

  def destroy
  end
  def show
    @page=Admin::Page.find(params[:id])
  end

  private
    def page_params
      params.require(:admin_page).permit(:id, page_metum_attributes: [:id, :text, :lang_id])
    end


end
