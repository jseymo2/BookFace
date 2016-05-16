class AuthorsController < ApplicationController

  def create
    @author = Author.create(author_params)
  end

  def show
    @author = Author.find(params[:id])
    @books = Book.where(author_id: params[:id])
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end

end