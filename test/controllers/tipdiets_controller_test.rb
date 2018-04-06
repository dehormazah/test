require 'test_helper'

class TipdietsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipdiet = tipdiets(:one)
  end

  test "should get index" do
    get tipdiets_url, as: :json
    assert_response :success
  end

  test "should create tipdiet" do
    assert_difference('Tipdiet.count') do
      post tipdiets_url, params: { tipdiet: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show tipdiet" do
    get tipdiet_url(@tipdiet), as: :json
    assert_response :success
  end

  test "should update tipdiet" do
    patch tipdiet_url(@tipdiet), params: { tipdiet: {  } }, as: :json
    assert_response 200
  end

  test "should destroy tipdiet" do
    assert_difference('Tipdiet.count', -1) do
      delete tipdiet_url(@tipdiet), as: :json
    end

    assert_response 204
  end
end
