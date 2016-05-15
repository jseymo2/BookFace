class FavoriteBooksController < ApplicationController

  layout 'application'

  def create
    favorite_book = FavoriteBook.find_by user_id: params[:user_id], book_id: params[:book_id]
    if favorite_book.nil?
      favorite_book = FavoriteBook.create(user_id: params[:user_id], book_id: params[:book_id])
      if favorite_book
        flash[:notice] = "#{params[:book_name]} has been successfully added to your favorites list."
        redirect_to :back
      else
        flash[:alert] = "Error adding #{params[:book_name]} to your favorites list."
        redirect_to :back
      end
    else
      flash[:alert] = "#{params[:book_name]} is already in your favorites list."
      redirect_to :back
    end    
  end

  def destroy
    book = Book.find(params[:id])
    favorite_book = FavoriteBook.find_by user_id: params[:user_id], book_id: params[:id]
    favorite_book.destroy
    flash[:notice] = "#{book} has been successfully deleted from your favorites' list."
    redirect_to :back
  end

  def show
    @user = User.find(params[:user])
    @favorite_books = []
    @favorite_books_ids = FavoriteBook.where(user_id: @user.id)

    @favorite_books_ids.each do |faves|
      @favorite_books.push(Book.find(faves.book_id))
    end
  end



end