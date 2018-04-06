require 'test_helper'

class UsertipdietrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usertipdietrecord = usertipdietrecords(:one)
  end

  test "should get index" do
    get usertipdietrecords_url, as: :json
    assert_response :success
  end

  test "should create usertipdietrecord" do
    assert_difference('Usertipdietrecord.count') do
      post usertipdietrecords_url, params: { usertipdietrecord: { tipdiet_id: @usertipdietrecord.tipdiet_id, user_id: @usertipdietrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usertipdietrecord" do
    get usertipdietrecord_url(@usertipdietrecord), as: :json
    assert_response :success
  end

  test "should update usertipdietrecord" do
    patch usertipdietrecord_url(@usertipdietrecord), params: { usertipdietrecord: { tipdiet_id: @usertipdietrecord.tipdiet_id, user_id: @usertipdietrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy usertipdietrecord" do
    assert_difference('Usertipdietrecord.count', -1) do
      delete usertipdietrecord_url(@usertipdietrecord), as: :json
    end

    assert_response 204
  end
end
