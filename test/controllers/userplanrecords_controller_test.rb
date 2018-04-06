require 'test_helper'

class UserplanrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userplanrecord = userplanrecords(:one)
  end

  test "should get index" do
    get userplanrecords_url, as: :json
    assert_response :success
  end

  test "should create userplanrecord" do
    assert_difference('Userplanrecord.count') do
      post userplanrecords_url, params: { userplanrecord: { plan_id: @userplanrecord.plan_id, user_id: @userplanrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userplanrecord" do
    get userplanrecord_url(@userplanrecord), as: :json
    assert_response :success
  end

  test "should update userplanrecord" do
    patch userplanrecord_url(@userplanrecord), params: { userplanrecord: { plan_id: @userplanrecord.plan_id, user_id: @userplanrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userplanrecord" do
    assert_difference('Userplanrecord.count', -1) do
      delete userplanrecord_url(@userplanrecord), as: :json
    end

    assert_response 204
  end
end
