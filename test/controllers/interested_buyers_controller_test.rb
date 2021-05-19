require "test_helper"

class InterestedBuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interested_buyer = interested_buyers(:one)
  end

  test "should get index" do
    get interested_buyers_url
    assert_response :success
  end

  test "should get new" do
    get new_interested_buyer_url
    assert_response :success
  end

  test "should create interested_buyer" do
    assert_difference('InterestedBuyer.count') do
      post interested_buyers_url, params: { interested_buyer: { apartment_id: @interested_buyer.apartment_id, email: @interested_buyer.email, name: @interested_buyer.name, phone_number: @interested_buyer.phone_number } }
    end

    assert_redirected_to interested_buyer_url(InterestedBuyer.last)
  end

  test "should show interested_buyer" do
    get interested_buyer_url(@interested_buyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_interested_buyer_url(@interested_buyer)
    assert_response :success
  end

  test "should update interested_buyer" do
    patch interested_buyer_url(@interested_buyer), params: { interested_buyer: { apartment_id: @interested_buyer.apartment_id, email: @interested_buyer.email, name: @interested_buyer.name, phone_number: @interested_buyer.phone_number } }
    assert_redirected_to interested_buyer_url(@interested_buyer)
  end

  test "should destroy interested_buyer" do
    assert_difference('InterestedBuyer.count', -1) do
      delete interested_buyer_url(@interested_buyer)
    end

    assert_redirected_to interested_buyers_url
  end
end
