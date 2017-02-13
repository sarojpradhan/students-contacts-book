class HomePagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to address_books_path
    end
  end
end
