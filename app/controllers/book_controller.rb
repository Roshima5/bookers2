class BookController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end
  
    private

  def image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
