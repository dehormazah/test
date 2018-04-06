require 'test_helper'

class PlacephyactivityrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @placephyactivityrecord = placephyactivityrecords(:one)
  end

  test "should get index" do
    get placephyactivityrecords_url, as: :json
    assert_response :success
  end

  test "should create placephyactivityrecord" do
    assert_difference('Placephyactivityrecord.count') do
      post placephyactivityrecords_url, params: { placephyactivityrecord: { phyactivity_id: @placephyactivityrecord.phyactivity_id, place_id: @placephyactivityrecord.place_id } }, as: :json
    end

    assert_response 201
  end

  test "should show placephyactivityrecord" do
    get placephyactivityrecord_url(@placephyactivityrecord), as: :json
    assert_response :success
  end

  test "should update placephyactivityrecord" do
    patch placephyactivityrecord_url(@placephyactivityrecord), params: { placephyactivityrecord: { phyactivity_id: @placephyactivityrecord.phyactivity_id, place_id: @placephyactivityrecord.place_id } }, as: :json
    assert_response 200
  end

  test "should destroy placephyactivityrecord" do
    assert_difference('Placephyactivityrecord.count', -1) do
      delete placephyactivityrecord_url(@placephyactivityrecord), as: :json
    end

    assert_response 204
  end
end
