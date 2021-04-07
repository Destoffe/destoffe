class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  private
  def book_params
     params.require(:book).permit(:title, :body,:score,:image)
  end

end
