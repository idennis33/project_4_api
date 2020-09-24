require 'test_helper'

class StatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get stats_url, as: :json
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post stats_url, params: { stat: { img: @stat.img, name: @stat.name, team: @stat.team, yards: @stat.yards } }, as: :json
    end

    assert_response 201
  end

  test "should show stat" do
    get stat_url(@stat), as: :json
    assert_response :success
  end

  test "should update stat" do
    patch stat_url(@stat), params: { stat: { img: @stat.img, name: @stat.name, team: @stat.team, yards: @stat.yards } }, as: :json
    assert_response 200
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete stat_url(@stat), as: :json
    end

    assert_response 204
  end
end
