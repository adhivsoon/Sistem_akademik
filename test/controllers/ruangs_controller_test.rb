require 'test_helper'

class RuangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruang = ruangs(:one)
  end

  test "should get index" do
    get ruangs_url
    assert_response :success
  end

  test "should get new" do
    get new_ruang_url
    assert_response :success
  end

  test "should create ruang" do
    assert_difference('Ruang.count') do
      post ruangs_url, params: { ruang: {  } }
    end

    assert_redirected_to ruang_url(Ruang.last)
  end

  test "should show ruang" do
    get ruang_url(@ruang)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruang_url(@ruang)
    assert_response :success
  end

  test "should update ruang" do
    patch ruang_url(@ruang), params: { ruang: {  } }
    assert_redirected_to ruang_url(@ruang)
  end

  test "should destroy ruang" do
    assert_difference('Ruang.count', -1) do
      delete ruang_url(@ruang)
    end

    assert_redirected_to ruangs_url
  end
end
