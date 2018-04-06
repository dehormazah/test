require 'test_helper'

class UserdietrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userdietrecord = userdietrecords(:one)
  end

  test "should get index" do
    get userdietrecords_url, as: :json
    assert_response :success
  end

  test "should create userdietrecord" do
    assert_difference('Userdietrecord.count') do
      post userdietrecords_url, params: { userdietrecord: { diet_id: @userdietrecord.diet_id, user_id: @userdietrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userdietrecord" do
    get userdietrecord_url(@userdietrecord), as: :json
    assert_response :success
  end

  test "should update userdietrecord" do
    patch userdietrecord_url(@userdietrecord), params: { userdietrecord: { diet_id: @userdietrecord.diet_id, user_id: @userdietrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userdietrecord" do
    assert_difference('Userdietrecord.count', -1) do
      delete userdietrecord_url(@userdietrecord), as: :json
    end

    assert_response 204
  end
end
