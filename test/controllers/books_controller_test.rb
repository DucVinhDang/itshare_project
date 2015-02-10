require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author_id: @book.author_id, category_id: @book.category_id, description: @book.description, download: @book.download, file_format: @book.file_format, file_size: @book.file_size, image: @book.image, language: @book.language, name: @book.name, pages: @book.pages, star_rating: @book.star_rating, year: @book.year }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author_id: @book.author_id, category_id: @book.category_id, description: @book.description, download: @book.download, file_format: @book.file_format, file_size: @book.file_size, image: @book.image, language: @book.language, name: @book.name, pages: @book.pages, star_rating: @book.star_rating, year: @book.year }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
