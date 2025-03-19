require "application_system_test_case"

class CourcesTest < ApplicationSystemTestCase
  setup do
    @cource = cources(:one)
  end

  test "visiting the index" do
    visit cources_url
    assert_selector "h1", text: "Cources"
  end

  test "should create cource" do
    visit cources_url
    click_on "New cource"

    fill_in "Description", with: @cource.description
    fill_in "Name", with: @cource.name
    click_on "Create Cource"

    assert_text "Cource was successfully created"
    click_on "Back"
  end

  test "should update Cource" do
    visit cource_url(@cource)
    click_on "Edit this cource", match: :first

    fill_in "Description", with: @cource.description
    fill_in "Name", with: @cource.name
    click_on "Update Cource"

    assert_text "Cource was successfully updated"
    click_on "Back"
  end

  test "should destroy Cource" do
    visit cource_url(@cource)
    click_on "Destroy this cource", match: :first

    assert_text "Cource was successfully destroyed"
  end
end
