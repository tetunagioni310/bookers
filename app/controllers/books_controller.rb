class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to "/books"
    else
      @books = Book.all
      render 'index'
    end
  end

  def destroy
    book = Book.find(book_params)
    book.destroy
    redirect_to "/books"
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
