require 'test_helper'

class PhyactivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phyactivity = phyactivities(:one)
  end

  test "should get index" do
    get phyactivities_url, as: :json
    assert_response :success
  end

  test "should create phyactivity" do
    assert_difference('Phyactivity.count') do
      post phyactivities_url, params: { phyactivity: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show phyactivity" do
    get phyactivity_url(@phyactivity), as: :json
    assert_response :success
  end

  test "should update phyactivity" do
    patch phyactivity_url(@phyactivity), params: { phyactivity: {  } }, as: :json
    assert_response 200
  end

  test "should destroy phyactivity" do
    assert_difference('Phyactivity.count', -1) do
      delete phyactivity_url(@phyactivity), as: :json
    end

    assert_response 204
  end
end
