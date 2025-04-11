require "test_helper"

class RacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get races_url
    assert_response :success
  end

  test "should get new" do
    get new_race_url
    assert_response :success
  end

  test "should create race" do
    assert_difference("Race.count") do
      post races_url, params: { race: { distance: @race.distance, event_no: @race.event_no, final_time: @race.final_time, heat: @race.heat, lane: @race.lane, place: @race.place, race_date: @race.race_date, seed_time: @race.seed_time, stroke: @race.stroke, swim_meet_id: @race.swim_meet_id } }
    end

    assert_redirected_to race_url(Race.last)
  end

  test "should show race" do
    get race_url(@race)
    assert_response :success
  end

  test "should get edit" do
    get edit_race_url(@race)
    assert_response :success
  end

  test "should update race" do
    patch race_url(@race), params: { race: { distance: @race.distance, event_no: @race.event_no, final_time: @race.final_time, heat: @race.heat, lane: @race.lane, place: @race.place, race_date: @race.race_date, seed_time: @race.seed_time, stroke: @race.stroke, swim_meet_id: @race.swim_meet_id } }
    assert_redirected_to race_url(@race)
  end

  test "should destroy race" do
    assert_difference("Race.count", -1) do
      delete race_url(@race)
    end

    assert_redirected_to races_url
  end
end
