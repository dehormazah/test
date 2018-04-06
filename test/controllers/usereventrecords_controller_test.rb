require 'test_helper'

class UsereventrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usereventrecord = usereventrecords(:one)
  end

  test "should get index" do
    get usereventrecords_url, as: :json
    assert_response :success
  end

  test "should create usereventrecord" do
    assert_difference('Usereventrecord.count') do
      post usereventrecords_url, params: { usereventrecord: { event_id: @usereventrecord.event_id, user_id: @usereventrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usereventrecord" do
    get usereventrecord_url(@usereventrecord), as: :json
    assert_response :success
  end

  test "should update usereventrecord" do
    patch usereventrecord_url(@usereventrecord), params: { usereventrecord: { event_id: @usereventrecord.event_id, user_id: @usereventrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy usereventrecord" do
    assert_difference('Usereventrecord.count', -1) do
      delete usereventrecord_url(@usereventrecord), as: :json
    end

    assert_response 204
  end
end
