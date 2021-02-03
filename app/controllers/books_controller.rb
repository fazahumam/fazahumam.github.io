class BooksController < ApplicationController

  before_action :user_sign_in?
  def index
    @books = Book.all
  end

  def new
    @book = Book.new 
  end

  def create
    @book = Book.new(resource_params)
    if @book.save
      flash[:notice] = 'the book has been created'
      puts book.errors.messages
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(resource_params)
    flash[:notice] = 'the book has been updated'
    redirect_to book_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'the book has been deleted'
    redirect_to books_path
  end

  def show
    id = params[:id]
    @book = Book.find(id)
    render layout: false
    #render plain: @book.title
  end

  private

  def resource_params
    params.require(:book).permit(:title, :page, :price, :description)
  end


end
