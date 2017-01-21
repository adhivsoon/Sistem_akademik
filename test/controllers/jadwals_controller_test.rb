require 'test_helper'

class JadwalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jadwal = jadwals(:one)
  end

  test "should get index" do
    get jadwals_url
    assert_response :success
  end

  test "should get new" do
    get new_jadwal_url
    assert_response :success
  end

  test "should create jadwal" do
    assert_difference('Jadwal.count') do
      post jadwals_url, params: { jadwal: {  } }
    end

    assert_redirected_to jadwal_url(Jadwal.last)
  end

  test "should show jadwal" do
    get jadwal_url(@jadwal)
    assert_response :success
  end

  test "should get edit" do
    get edit_jadwal_url(@jadwal)
    assert_response :success
  end

  test "should update jadwal" do
    patch jadwal_url(@jadwal), params: { jadwal: {  } }
    assert_redirected_to jadwal_url(@jadwal)
  end

  test "should destroy jadwal" do
    assert_difference('Jadwal.count', -1) do
      delete jadwal_url(@jadwal)
    end

    assert_redirected_to jadwals_url
  end
end
