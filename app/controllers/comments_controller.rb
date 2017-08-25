class CommentsController < ApplicationController
  def new
    @newcomment = Comment.new
  end
  def create
    @page = Page.find(comment_params[:page_id])
    @page.count += 1
    @page.save
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @page
    else
      redirect_to :home
    end
  end
  def update
  end

  def comment_params
    params.require(:comment).permit(:content, :page_id)
  end
end
