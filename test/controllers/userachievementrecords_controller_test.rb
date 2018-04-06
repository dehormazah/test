require 'test_helper'

class UserachievementrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userachievementrecord = userachievementrecords(:one)
  end

  test "should get index" do
    get userachievementrecords_url, as: :json
    assert_response :success
  end

  test "should create userachievementrecord" do
    assert_difference('Userachievementrecord.count') do
      post userachievementrecords_url, params: { userachievementrecord: { achievement_id: @userachievementrecord.achievement_id, user_id: @userachievementrecord.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userachievementrecord" do
    get userachievementrecord_url(@userachievementrecord), as: :json
    assert_response :success
  end

  test "should update userachievementrecord" do
    patch userachievementrecord_url(@userachievementrecord), params: { userachievementrecord: { achievement_id: @userachievementrecord.achievement_id, user_id: @userachievementrecord.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userachievementrecord" do
    assert_difference('Userachievementrecord.count', -1) do
      delete userachievementrecord_url(@userachievementrecord), as: :json
    end

    assert_response 204
  end
end
