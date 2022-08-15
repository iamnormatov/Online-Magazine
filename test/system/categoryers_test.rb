require "application_system_test_case"

class CategoryersTest < ApplicationSystemTestCase
  setup do
    @categoryer = categoryers(:one)
  end

  test "visiting the index" do
    visit categoryers_url
    assert_selector "h1", text: "Categoryers"
  end

  test "should create categoryer" do
    visit categoryers_url
    click_on "New categoryer"

    fill_in "Name", with: @categoryer.name
    click_on "Create Categoryer"

    assert_text "Categoryer was successfully created"
    click_on "Back"
  end

  test "should update Categoryer" do
    visit categoryer_url(@categoryer)
    click_on "Edit this categoryer", match: :first

    fill_in "Name", with: @categoryer.name
    click_on "Update Categoryer"

    assert_text "Categoryer was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoryer" do
    visit categoryer_url(@categoryer)
    click_on "Destroy this categoryer", match: :first

    assert_text "Categoryer was successfully destroyed"
  end
end
