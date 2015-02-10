class DetailsController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @categories = Category.all
    @authors = Author.all
    @books = Book.all
  end

  def show
      @categories = Category.all
      @authors = Author.all
      @books = Book.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_book
      @book = Book.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
      params.require(:book).permit(:name, :author_id, :category_id, :year, :star_rating, :download, :description, :image, :pages, :language, :file_size, :file_format)
  end
end
