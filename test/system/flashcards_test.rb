require "application_system_test_case"

class FlashcardsTest < ApplicationSystemTestCase
  setup do
    @flashcard = flashcards(:one)
  end

  test "visiting the index" do
    visit flashcards_url
    assert_selector "h1", text: "Flashcards"
  end

  test "creating a Flashcard" do
    visit flashcards_url
    click_on "New Flashcard"

    fill_in "Answer", with: @flashcard.answer
    fill_in "Longest streak", with: @flashcard.longest_streak
    fill_in "Option one", with: @flashcard.option_one
    fill_in "Option three", with: @flashcard.option_three
    fill_in "Option two", with: @flashcard.option_two
    fill_in "Question", with: @flashcard.question
    fill_in "Streak", with: @flashcard.streak
    click_on "Create Flashcard"

    assert_text "Flashcard was successfully created"
    click_on "Back"
  end

  test "updating a Flashcard" do
    visit flashcards_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @flashcard.answer
    fill_in "Longest streak", with: @flashcard.longest_streak
    fill_in "Option one", with: @flashcard.option_one
    fill_in "Option three", with: @flashcard.option_three
    fill_in "Option two", with: @flashcard.option_two
    fill_in "Question", with: @flashcard.question
    fill_in "Streak", with: @flashcard.streak
    click_on "Update Flashcard"

    assert_text "Flashcard was successfully updated"
    click_on "Back"
  end

  test "destroying a Flashcard" do
    visit flashcards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flashcard was successfully destroyed"
  end
end
