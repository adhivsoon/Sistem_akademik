require 'test_helper'

class MataKuliahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mata_kuliah = mata_kuliahs(:one)
  end

  test "should get index" do
    get mata_kuliahs_url
    assert_response :success
  end

  test "should get new" do
    get new_mata_kuliah_url
    assert_response :success
  end

  test "should create mata_kuliah" do
    assert_difference('MataKuliah.count') do
      post mata_kuliahs_url, params: { mata_kuliah: {  } }
    end

    assert_redirected_to mata_kuliah_url(MataKuliah.last)
  end

  test "should show mata_kuliah" do
    get mata_kuliah_url(@mata_kuliah)
    assert_response :success
  end

  test "should get edit" do
    get edit_mata_kuliah_url(@mata_kuliah)
    assert_response :success
  end

  test "should update mata_kuliah" do
    patch mata_kuliah_url(@mata_kuliah), params: { mata_kuliah: {  } }
    assert_redirected_to mata_kuliah_url(@mata_kuliah)
  end

  test "should destroy mata_kuliah" do
    assert_difference('MataKuliah.count', -1) do
      delete mata_kuliah_url(@mata_kuliah)
    end

    assert_redirected_to mata_kuliahs_url
  end
end
