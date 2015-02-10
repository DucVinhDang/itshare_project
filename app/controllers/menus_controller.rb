class MenusController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
    @authors = Author.all
    @books = Books.all
  end

  def show
    @categories = Category.all
    @authors = Author.all
    @books = Books.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
        params.require(:category).permit(:name, :description)
    end
end
