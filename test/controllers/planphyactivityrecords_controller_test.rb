require 'test_helper'

class PlanphyactivityrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planphyactivityrecord = planphyactivityrecords(:one)
  end

  test "should get index" do
    get planphyactivityrecords_url, as: :json
    assert_response :success
  end

  test "should create planphyactivityrecord" do
    assert_difference('Planphyactivityrecord.count') do
      post planphyactivityrecords_url, params: { planphyactivityrecord: { phyactivity: @planphyactivityrecord.phyactivity, plan_id: @planphyactivityrecord.plan_id } }, as: :json
    end

    assert_response 201
  end

  test "should show planphyactivityrecord" do
    get planphyactivityrecord_url(@planphyactivityrecord), as: :json
    assert_response :success
  end

  test "should update planphyactivityrecord" do
    patch planphyactivityrecord_url(@planphyactivityrecord), params: { planphyactivityrecord: { phyactivity: @planphyactivityrecord.phyactivity, plan_id: @planphyactivityrecord.plan_id } }, as: :json
    assert_response 200
  end

  test "should destroy planphyactivityrecord" do
    assert_difference('Planphyactivityrecord.count', -1) do
      delete planphyactivityrecord_url(@planphyactivityrecord), as: :json
    end

    assert_response 204
  end
end
