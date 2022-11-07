require 'test_helper'

class BookAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_app = book_apps(:one)
  end

  test "should get index" do
    get book_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_book_app_url
    assert_response :success
  end

  test "should create book_app" do
    assert_difference('BookApp.count') do
      post book_apps_url, params: { book_app: { price: @book_app.price, title: @book_app.title } }
    end

    assert_redirected_to book_app_url(BookApp.last)
  end

  test "should show book_app" do
    get book_app_url(@book_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_app_url(@book_app)
    assert_response :success
  end

  test "should update book_app" do
    patch book_app_url(@book_app), params: { book_app: { price: @book_app.price, title: @book_app.title } }
    assert_redirected_to book_app_url(@book_app)
  end

  test "should destroy book_app" do
    assert_difference('BookApp.count', -1) do
      delete book_app_url(@book_app)
    end

    assert_redirected_to book_apps_url
  end
end
