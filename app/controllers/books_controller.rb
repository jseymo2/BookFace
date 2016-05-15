class BooksController < ApplicationController

  def index
    @books = Book.paginate(:page => params[:page], :per_page => 15)
  end

  def show
  	@book = Book.find_by :id => params[:id]
    @comments = BookComment.where(book_id: params[:id])
  end

  def add_new_comment
    comment = BookComment.create(book_id: params[:book_id], user_id: current_user.id, comment: params[:comment])
    flash[:notice] = "Comment successfully added."
    redirect_to :back
  end

end