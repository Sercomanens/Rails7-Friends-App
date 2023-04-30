require "application_system_test_case"

class ClearsTest < ApplicationSystemTestCase
  setup do
    @clear = clears(:one)
  end

  test "visiting the index" do
    visit clears_url
    assert_selector "h1", text: "Clears"
  end

  test "should create clear" do
    visit clears_url
    click_on "New clear"

    click_on "Create Clear"

    assert_text "Clear was successfully created"
    click_on "Back"
  end

  test "should update Clear" do
    visit clear_url(@clear)
    click_on "Edit this clear", match: :first

    click_on "Update Clear"

    assert_text "Clear was successfully updated"
    click_on "Back"
  end

  test "should destroy Clear" do
    visit clear_url(@clear)
    click_on "Destroy this clear", match: :first

    assert_text "Clear was successfully destroyed"
  end
end
