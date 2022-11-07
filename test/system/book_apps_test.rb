require "application_system_test_case"

class BookAppsTest < ApplicationSystemTestCase
  setup do
    @book_app = book_apps(:one)
  end

  test "visiting the index" do
    visit book_apps_url
    assert_selector "h1", text: "Book Apps"
  end

  test "creating a Book app" do
    visit book_apps_url
    click_on "New Book App"

    fill_in "Price", with: @book_app.price
    fill_in "Title", with: @book_app.title
    click_on "Create Book app"

    assert_text "Book app was successfully created"
    click_on "Back"
  end

  test "updating a Book app" do
    visit book_apps_url
    click_on "Edit", match: :first

    fill_in "Price", with: @book_app.price
    fill_in "Title", with: @book_app.title
    click_on "Update Book app"

    assert_text "Book app was successfully updated"
    click_on "Back"
  end

  test "destroying a Book app" do
    visit book_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book app was successfully destroyed"
  end
end
