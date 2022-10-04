require "application_system_test_case"

class VocabulariesTest < ApplicationSystemTestCase
  setup do
    @vocabulary = vocabularies(:one)
  end

  test "visiting the index" do
    visit vocabularies_url
    assert_selector "h1", text: "Vocabularies"
  end

  test "should create vocabulary" do
    visit vocabularies_url
    click_on "New vocabulary"

    fill_in "Chinese", with: @vocabulary.chinese
    fill_in "English", with: @vocabulary.english
    fill_in "Japanese", with: @vocabulary.japanese
    fill_in "Kanji", with: @vocabulary.kanji
    click_on "Create Vocabulary"

    assert_text "Vocabulary was successfully created"
    click_on "Back"
  end

  test "should update Vocabulary" do
    visit vocabulary_url(@vocabulary)
    click_on "Edit this vocabulary", match: :first

    fill_in "Chinese", with: @vocabulary.chinese
    fill_in "English", with: @vocabulary.english
    fill_in "Japanese", with: @vocabulary.japanese
    fill_in "Kanji", with: @vocabulary.kanji
    click_on "Update Vocabulary"

    assert_text "Vocabulary was successfully updated"
    click_on "Back"
  end

  test "should destroy Vocabulary" do
    visit vocabulary_url(@vocabulary)
    click_on "Destroy this vocabulary", match: :first

    assert_text "Vocabulary was successfully destroyed"
  end
end
