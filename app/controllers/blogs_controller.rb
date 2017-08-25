class BlogsController < ApplicationController
  def home
    @pages = Page.all
  end
  def new
    @newpage = Page.new
  end
  def create
    @page = Page.new(page_params)
    if @page.save
      render 'Blogs#home'
    else
      render 'Blogs#new'
    end
  end
  def update
  end

  def page_params
    params.require(:page).permit(:title)
  end
end
