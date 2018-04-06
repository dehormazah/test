require 'test_helper'

class EventplacerecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventplacerecord = eventplacerecords(:one)
  end

  test "should get index" do
    get eventplacerecords_url, as: :json
    assert_response :success
  end

  test "should create eventplacerecord" do
    assert_difference('Eventplacerecord.count') do
      post eventplacerecords_url, params: { eventplacerecord: { event_id: @eventplacerecord.event_id, place_id: @eventplacerecord.place_id } }, as: :json
    end

    assert_response 201
  end

  test "should show eventplacerecord" do
    get eventplacerecord_url(@eventplacerecord), as: :json
    assert_response :success
  end

  test "should update eventplacerecord" do
    patch eventplacerecord_url(@eventplacerecord), params: { eventplacerecord: { event_id: @eventplacerecord.event_id, place_id: @eventplacerecord.place_id } }, as: :json
    assert_response 200
  end

  test "should destroy eventplacerecord" do
    assert_difference('Eventplacerecord.count', -1) do
      delete eventplacerecord_url(@eventplacerecord), as: :json
    end

    assert_response 204
  end
end
