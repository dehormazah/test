require 'test_helper'

class UsertipactivityrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usertipactivityrecord = usertipactivityrecords(:one)
  end

  test "should get index" do
    get usertipactivityrecords_url, as: :json
    assert_response :success
  end

  test "should create usertipactivityrecord" do
    assert_difference('Usertipactivityrecord.count') do
      post usertipactivityrecords_url, params: { usertipactivityrecord: { tipactivity_id: @usertipactivityrecord.tipactivity_id, user_id: @usertipactivityrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usertipactivityrecord" do
    get usertipactivityrecord_url(@usertipactivityrecord), as: :json
    assert_response :success
  end

  test "should update usertipactivityrecord" do
    patch usertipactivityrecord_url(@usertipactivityrecord), params: { usertipactivityrecord: { tipactivity_id: @usertipactivityrecord.tipactivity_id, user_id: @usertipactivityrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy usertipactivityrecord" do
    assert_difference('Usertipactivityrecord.count', -1) do
      delete usertipactivityrecord_url(@usertipactivityrecord), as: :json
    end

    assert_response 204
  end
end
