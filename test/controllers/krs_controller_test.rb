require 'test_helper'

class KrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kr = krs(:one)
  end

  test "should get index" do
    get krs_url
    assert_response :success
  end

  test "should get new" do
    get new_kr_url
    assert_response :success
  end

  test "should create kr" do
    assert_difference('Kr.count') do
      post krs_url, params: { kr: {  } }
    end

    assert_redirected_to kr_url(Kr.last)
  end

  test "should show kr" do
    get kr_url(@kr)
    assert_response :success
  end

  test "should get edit" do
    get edit_kr_url(@kr)
    assert_response :success
  end

  test "should update kr" do
    patch kr_url(@kr), params: { kr: {  } }
    assert_redirected_to kr_url(@kr)
  end

  test "should destroy kr" do
    assert_difference('Kr.count', -1) do
      delete kr_url(@kr)
    end

    assert_redirected_to krs_url
  end
end
