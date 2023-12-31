require "test_helper"

class FlashcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flashcard = flashcards(:one)
  end

  test "should get index" do
    get flashcards_url
    assert_response :success
  end

  test "should get new" do
    get new_flashcard_url
    assert_response :success
  end

  test "should create flashcard" do
    assert_difference('Flashcard.count') do
      post flashcards_url, params: { flashcard: { answer: @flashcard.answer, longest_streak: @flashcard.longest_streak, option_one: @flashcard.option_one, option_three: @flashcard.option_three, option_two: @flashcard.option_two, question: @flashcard.question, streak: @flashcard.streak } }
    end

    assert_redirected_to flashcard_url(Flashcard.last)
  end

  test "should show flashcard" do
    get flashcard_url(@flashcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_flashcard_url(@flashcard)
    assert_response :success
  end

  test "should update flashcard" do
    patch flashcard_url(@flashcard), params: { flashcard: { answer: @flashcard.answer, longest_streak: @flashcard.longest_streak, option_one: @flashcard.option_one, option_three: @flashcard.option_three, option_two: @flashcard.option_two, question: @flashcard.question, streak: @flashcard.streak } }
    assert_redirected_to flashcard_url(@flashcard)
  end

  test "should destroy flashcard" do
    assert_difference('Flashcard.count', -1) do
      delete flashcard_url(@flashcard)
    end

    assert_redirected_to flashcards_url
  end
end
