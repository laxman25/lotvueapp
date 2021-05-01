require "test_helper"

class VisaDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_detail = visa_details(:one)
  end

  test "should get index" do
    get visa_details_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_detail_url
    assert_response :success
  end

  test "should create visa_detail" do
    assert_difference('VisaDetail.count') do
      post visa_details_url, params: { visa_detail: {  } }
    end

    assert_redirected_to visa_detail_url(VisaDetail.last)
  end

  test "should show visa_detail" do
    get visa_detail_url(@visa_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_detail_url(@visa_detail)
    assert_response :success
  end

  test "should update visa_detail" do
    patch visa_detail_url(@visa_detail), params: { visa_detail: {  } }
    assert_redirected_to visa_detail_url(@visa_detail)
  end

  test "should destroy visa_detail" do
    assert_difference('VisaDetail.count', -1) do
      delete visa_detail_url(@visa_detail)
    end

    assert_redirected_to visa_details_url
  end
end
