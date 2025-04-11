require "test_helper"

class SwimMeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swim_meet = swim_meets(:one)
  end

  test "should get index" do
    get swim_meets_url
    assert_response :success
  end

  test "should get new" do
    get new_swim_meet_url
    assert_response :success
  end

  test "should create swim_meet" do
    assert_difference("SwimMeet.count") do
      post swim_meets_url, params: { swim_meet: { address: @swim_meet.address, course: @swim_meet.course, end_date: @swim_meet.end_date, name: @swim_meet.name, start_date: @swim_meet.start_date, venue: @swim_meet.venue } }
    end

    assert_redirected_to swim_meet_url(SwimMeet.last)
  end

  test "should show swim_meet" do
    get swim_meet_url(@swim_meet)
    assert_response :success
  end

  test "should get edit" do
    get edit_swim_meet_url(@swim_meet)
    assert_response :success
  end

  test "should update swim_meet" do
    patch swim_meet_url(@swim_meet), params: { swim_meet: { address: @swim_meet.address, course: @swim_meet.course, end_date: @swim_meet.end_date, name: @swim_meet.name, start_date: @swim_meet.start_date, venue: @swim_meet.venue } }
    assert_redirected_to swim_meet_url(@swim_meet)
  end

  test "should destroy swim_meet" do
    assert_difference("SwimMeet.count", -1) do
      delete swim_meet_url(@swim_meet)
    end

    assert_redirected_to swim_meets_url
  end
end
