class AddressBooksController < ApplicationController

  before_action :authenticate_user!

  def index
    @address_books = current_user.address_books.all
  end

  def show
    @address_book = current_user.address_books.find(params[:id])
  end

  def new
    @address_book = current_user.address_books.new
  end

  def create
    @address_book = current_user.address_books.new(address_book_params)
    if @address_book.save
      redirect_to address_books_path
    else
      render 'new'
    end
  end

  def edit
    @address_book = current_user.address_books.find(params[:id])
  end

  def update
    @address_book = current_user.address_books.find(params[:id])
    if @address_book.update_attributes(address_book_params)
      redirect_to address_books_path
    else
      render 'edit'
    end
  end

  def destroy
    @address_book = current_user.address_books.find(params[:id])
    if @address_book.destroy
      redirect_to address_books_path
    else
      redirect_to address_books_path
    end

  end

  private
    def find_address_book
      @address_book = current_user.address_books.find(params[:id])
    end

    def address_book_params
      params.require(:address_book).permit(:phone, :street, :post, :city, :country)
    end

end
