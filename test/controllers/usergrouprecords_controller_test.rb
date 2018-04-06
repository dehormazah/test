require 'test_helper'

class UsergrouprecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usergrouprecord = usergrouprecords(:one)
  end

  test "should get index" do
    get usergrouprecords_url, as: :json
    assert_response :success
  end

  test "should create usergrouprecord" do
    assert_difference('Usergrouprecord.count') do
      post usergrouprecords_url, params: { usergrouprecord: { group_id: @usergrouprecord.group_id, user_id: @usergrouprecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usergrouprecord" do
    get usergrouprecord_url(@usergrouprecord), as: :json
    assert_response :success
  end

  test "should update usergrouprecord" do
    patch usergrouprecord_url(@usergrouprecord), params: { usergrouprecord: { group_id: @usergrouprecord.group_id, user_id: @usergrouprecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy usergrouprecord" do
    assert_difference('Usergrouprecord.count', -1) do
      delete usergrouprecord_url(@usergrouprecord), as: :json
    end

    assert_response 204
  end
end
