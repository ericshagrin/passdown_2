require "application_system_test_case"

class ApartmentsTest < ApplicationSystemTestCase
  setup do
    @apartment = apartments(:one)
  end

  test "visiting the index" do
    visit apartments_url
    assert_selector "h1", text: "Apartments"
  end

  test "creating a Apartment" do
    visit apartments_url
    click_on "New Apartment"

    fill_in "Address", with: @apartment.address
    fill_in "Description", with: @apartment.description
    fill_in "Furniture amt", with: @apartment.furniture_amt
    fill_in "Num bath", with: @apartment.num_bath
    fill_in "Num bdrms", with: @apartment.num_bdrms
    fill_in "Price", with: @apartment.price
    fill_in "User", with: @apartment.user_id
    click_on "Create Apartment"

    assert_text "Apartment was successfully created"
    click_on "Back"
  end

  test "updating a Apartment" do
    visit apartments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @apartment.address
    fill_in "Description", with: @apartment.description
    fill_in "Furniture amt", with: @apartment.furniture_amt
    fill_in "Num bath", with: @apartment.num_bath
    fill_in "Num bdrms", with: @apartment.num_bdrms
    fill_in "Price", with: @apartment.price
    fill_in "User", with: @apartment.user_id
    click_on "Update Apartment"

    assert_text "Apartment was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment" do
    visit apartments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment was successfully destroyed"
  end
end
