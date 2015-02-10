class HomeController < ApplicationController
  def index
      @authors = Author.all
      @categories = Category.all
      @books = Book.all
  end
end
