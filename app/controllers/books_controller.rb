class BooksController < ApplicationController
  def index
    @books =Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def destroy #これいらん？？？
  end

  def new #びゅーもいる？？
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
