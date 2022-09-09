require "application_system_test_case"

class FiendsTest < ApplicationSystemTestCase
  setup do
    @fiend = fiends(:one)
  end

  test "visiting the index" do
    visit fiends_url
    assert_selector "h1", text: "Fiends"
  end

  test "should create fiend" do
    visit fiends_url
    click_on "New fiend"

    click_on "Create Fiend"

    assert_text "Fiend was successfully created"
    click_on "Back"
  end

  test "should update Fiend" do
    visit fiend_url(@fiend)
    click_on "Edit this fiend", match: :first

    click_on "Update Fiend"

    assert_text "Fiend was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiend" do
    visit fiend_url(@fiend)
    click_on "Destroy this fiend", match: :first

    assert_text "Fiend was successfully destroyed"
  end
end
