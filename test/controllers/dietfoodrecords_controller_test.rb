require 'test_helper'

class DietfoodrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dietfoodrecord = dietfoodrecords(:one)
  end

  test "should get index" do
    get dietfoodrecords_url, as: :json
    assert_response :success
  end

  test "should create dietfoodrecord" do
    assert_difference('Dietfoodrecord.count') do
      post dietfoodrecords_url, params: { dietfoodrecord: { diet_id: @dietfoodrecord.diet_id, food_id: @dietfoodrecord.food_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dietfoodrecord" do
    get dietfoodrecord_url(@dietfoodrecord), as: :json
    assert_response :success
  end

  test "should update dietfoodrecord" do
    patch dietfoodrecord_url(@dietfoodrecord), params: { dietfoodrecord: { diet_id: @dietfoodrecord.diet_id, food_id: @dietfoodrecord.food_id } }, as: :json
    assert_response 200
  end

  test "should destroy dietfoodrecord" do
    assert_difference('Dietfoodrecord.count', -1) do
      delete dietfoodrecord_url(@dietfoodrecord), as: :json
    end

    assert_response 204
  end
end
