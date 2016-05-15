class FavoriteBooksController < ApplicationController

  layout 'application'

  def create

    favorite_book = FavoriteBook.create(user_id: params[:user_id], book_id: params[:book_id])



    if favorite_book
      flash[:notice] = "#{params[:book_name]} has been successfully added to your favorites list."
      redirect_to :back

    else

      flash[:notice] = "#{params[:book_name]} has already been added to your favorite list."
      redirect_to books_path notice: favorite_book.errors.full_messages.first
    end
    
  end

  def show

  end



end