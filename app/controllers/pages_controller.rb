class PagesController < ApplicationController
  def home
    @pages = Page.all.reverse_order
    @newpage = Page.new
  end
  def new
    @newpage = Page.new
  end
  def create
    @page = Page.new(page_params)
    @page.like = 0
    @page.count = 0
    if @page.save
      redirect_to :home
    else
      # render 'new'
    end
  end
  def update
  end
  def show
    @page = Page.find(params[:id])
    @comments = Comment.where(page_id: params[:id])
    @newcomment = Comment.new
  end
  def like_count
    @page = Page.find(params[:page_id])
    @page.like += 1
    @page.save
    redirect_to :home
  end

  def like_count_p
    @page = Page.find(params[:page_id])
    @page.like += 1
    @page.save
    redirect_to @page
  end

  def page_params
    params.require(:page).permit(:title)
  end
end
