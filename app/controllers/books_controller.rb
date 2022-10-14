class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book.params)
    @book.save
    redirect_to '/books'
  end 

  def edit
    @book =Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
