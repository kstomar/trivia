require "application_system_test_case"

class TriviaTest < ApplicationSystemTestCase
  setup do
    @trivium = trivia(:one)
  end

  test "visiting the index" do
    visit trivia_url
    assert_selector "h1", text: "Trivia"
  end

  test "creating a Trivium" do
    visit trivia_url
    click_on "New Trivium"

    click_on "Create Trivium"

    assert_text "Trivium was successfully created"
    click_on "Back"
  end

  test "updating a Trivium" do
    visit trivia_url
    click_on "Edit", match: :first

    click_on "Update Trivium"

    assert_text "Trivium was successfully updated"
    click_on "Back"
  end

  test "destroying a Trivium" do
    visit trivia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trivium was successfully destroyed"
  end
end
