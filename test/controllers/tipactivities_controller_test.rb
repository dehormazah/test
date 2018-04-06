require 'test_helper'

class TipactivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipactivity = tipactivities(:one)
  end

  test "should get index" do
    get tipactivities_url, as: :json
    assert_response :success
  end

  test "should create tipactivity" do
    assert_difference('Tipactivity.count') do
      post tipactivities_url, params: { tipactivity: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show tipactivity" do
    get tipactivity_url(@tipactivity), as: :json
    assert_response :success
  end

  test "should update tipactivity" do
    patch tipactivity_url(@tipactivity), params: { tipactivity: {  } }, as: :json
    assert_response 200
  end

  test "should destroy tipactivity" do
    assert_difference('Tipactivity.count', -1) do
      delete tipactivity_url(@tipactivity), as: :json
    end

    assert_response 204
  end
end
