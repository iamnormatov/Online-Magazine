require "application_system_test_case"

class CategoriysTest < ApplicationSystemTestCase
  setup do
    @categoriy = categoriys(:one)
  end

  test "visiting the index" do
    visit categoriys_url
    assert_selector "h1", text: "Categoriys"
  end

  test "should create categoriy" do
    visit categoriys_url
    click_on "New categoriy"

    fill_in "Name", with: @categoriy.name
    click_on "Create Categoriy"

    assert_text "Categoriy was successfully created"
    click_on "Back"
  end

  test "should update Categoriy" do
    visit categoriy_url(@categoriy)
    click_on "Edit this categoriy", match: :first

    fill_in "Name", with: @categoriy.name
    click_on "Update Categoriy"

    assert_text "Categoriy was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoriy" do
    visit categoriy_url(@categoriy)
    click_on "Destroy this categoriy", match: :first

    assert_text "Categoriy was successfully destroyed"
  end
end
