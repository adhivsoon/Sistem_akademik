require 'test_helper'

class KhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kh = khs(:one)
  end

  test "should get index" do
    get khs_url
    assert_response :success
  end

  test "should get new" do
    get new_kh_url
    assert_response :success
  end

  test "should create kh" do
    assert_difference('Kh.count') do
      post khs_url, params: { kh: {  } }
    end

    assert_redirected_to kh_url(Kh.last)
  end

  test "should show kh" do
    get kh_url(@kh)
    assert_response :success
  end

  test "should get edit" do
    get edit_kh_url(@kh)
    assert_response :success
  end

  test "should update kh" do
    patch kh_url(@kh), params: { kh: {  } }
    assert_redirected_to kh_url(@kh)
  end

  test "should destroy kh" do
    assert_difference('Kh.count', -1) do
      delete kh_url(@kh)
    end

    assert_redirected_to khs_url
  end
end
