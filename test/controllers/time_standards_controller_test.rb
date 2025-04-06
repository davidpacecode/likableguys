require "test_helper"

class TimeStandardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_standard = time_standards(:one)
  end

  test "should get index" do
    get time_standards_url
    assert_response :success
  end

  test "should get new" do
    get new_time_standard_url
    assert_response :success
  end

  test "should create time_standard" do
    assert_difference("TimeStandard.count") do
      post time_standards_url, params: { time_standard: { a: @time_standard.a, aa: @time_standard.aa, aaa: @time_standard.aaa, aaaa: @time_standard.aaaa, age: @time_standard.age, age_group: @time_standard.age_group, b: @time_standard.b, bb: @time_standard.bb, course: @time_standard.course, distance: @time_standard.distance, gender: @time_standard.gender, sort_order: @time_standard.sort_order, standard_type: @time_standard.standard_type, stroke: @time_standard.stroke } }
    end

    assert_redirected_to time_standard_url(TimeStandard.last)
  end

  test "should show time_standard" do
    get time_standard_url(@time_standard)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_standard_url(@time_standard)
    assert_response :success
  end

  test "should update time_standard" do
    patch time_standard_url(@time_standard), params: { time_standard: { a: @time_standard.a, aa: @time_standard.aa, aaa: @time_standard.aaa, aaaa: @time_standard.aaaa, age: @time_standard.age, age_group: @time_standard.age_group, b: @time_standard.b, bb: @time_standard.bb, course: @time_standard.course, distance: @time_standard.distance, gender: @time_standard.gender, sort_order: @time_standard.sort_order, standard_type: @time_standard.standard_type, stroke: @time_standard.stroke } }
    assert_redirected_to time_standard_url(@time_standard)
  end

  test "should destroy time_standard" do
    assert_difference("TimeStandard.count", -1) do
      delete time_standard_url(@time_standard)
    end

    assert_redirected_to time_standards_url
  end
end
