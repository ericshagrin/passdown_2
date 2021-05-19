require "application_system_test_case"

class InterestedBuyersTest < ApplicationSystemTestCase
  setup do
    @interested_buyer = interested_buyers(:one)
  end

  test "visiting the index" do
    visit interested_buyers_url
    assert_selector "h1", text: "Interested Buyers"
  end

  test "creating a Interested buyer" do
    visit interested_buyers_url
    click_on "New Interested Buyer"

    fill_in "Apartment", with: @interested_buyer.apartment_id
    fill_in "Email", with: @interested_buyer.email
    fill_in "Name", with: @interested_buyer.name
    fill_in "Phone number", with: @interested_buyer.phone_number
    click_on "Create Interested buyer"

    assert_text "Interested buyer was successfully created"
    click_on "Back"
  end

  test "updating a Interested buyer" do
    visit interested_buyers_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @interested_buyer.apartment_id
    fill_in "Email", with: @interested_buyer.email
    fill_in "Name", with: @interested_buyer.name
    fill_in "Phone number", with: @interested_buyer.phone_number
    click_on "Update Interested buyer"

    assert_text "Interested buyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Interested buyer" do
    visit interested_buyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interested buyer was successfully destroyed"
  end
end
