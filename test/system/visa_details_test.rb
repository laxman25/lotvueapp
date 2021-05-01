require "application_system_test_case"

class VisaDetailsTest < ApplicationSystemTestCase
  setup do
    @visa_detail = visa_details(:one)
  end

  test "visiting the index" do
    visit visa_details_url
    assert_selector "h1", text: "Visa Details"
  end

  test "creating a Visa detail" do
    visit visa_details_url
    click_on "New Visa Detail"

    click_on "Create Visa detail"

    assert_text "Visa detail was successfully created"
    click_on "Back"
  end

  test "updating a Visa detail" do
    visit visa_details_url
    click_on "Edit", match: :first

    click_on "Update Visa detail"

    assert_text "Visa detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa detail" do
    visit visa_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa detail was successfully destroyed"
  end
end
