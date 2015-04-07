class BooksController < ApplicationController

  def index
    @books = Book.where(author_id: params[:author_id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    Book.find(params[:id]).update_attributes(title: params[:title], pages: params[:pages], genre: params[:genre])

    redirect_to author_books_path(params[:author_id])
  end

  def create
    Author.find(params[:author_id]).books.create(title: params[:title], pages: params[:pages], genre: params[:genre])

    redirect_to author_books_path(params[:author_id])
  end

end
