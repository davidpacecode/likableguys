require "test_helper"

class UsaSwimmingTimeStandardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usa_swimming_time_standard = usa_swimming_time_standards(:one)
  end

  test "should get index" do
    get usa_swimming_time_standards_url
    assert_response :success
  end

  test "should get new" do
    get new_usa_swimming_time_standard_url
    assert_response :success
  end

  test "should create usa_swimming_time_standard" do
    assert_difference("UsaSwimmingTimeStandard.count") do
      post usa_swimming_time_standards_url, params: { usa_swimming_time_standard: { a: @usa_swimming_time_standard.a, aa: @usa_swimming_time_standard.aa, aaa: @usa_swimming_time_standard.aaa, aaaa: @usa_swimming_time_standard.aaaa, age: @usa_swimming_time_standard.age, age_group: @usa_swimming_time_standard.age_group, b: @usa_swimming_time_standard.b, bb: @usa_swimming_time_standard.bb, course: @usa_swimming_time_standard.course, event: @usa_swimming_time_standard.event, gender: @usa_swimming_time_standard.gender, standard_type: @usa_swimming_time_standard.standard_type } }
    end

    assert_redirected_to usa_swimming_time_standard_url(UsaSwimmingTimeStandard.last)
  end

  test "should show usa_swimming_time_standard" do
    get usa_swimming_time_standard_url(@usa_swimming_time_standard)
    assert_response :success
  end

  test "should get edit" do
    get edit_usa_swimming_time_standard_url(@usa_swimming_time_standard)
    assert_response :success
  end

  test "should update usa_swimming_time_standard" do
    patch usa_swimming_time_standard_url(@usa_swimming_time_standard), params: { usa_swimming_time_standard: { a: @usa_swimming_time_standard.a, aa: @usa_swimming_time_standard.aa, aaa: @usa_swimming_time_standard.aaa, aaaa: @usa_swimming_time_standard.aaaa, age: @usa_swimming_time_standard.age, age_group: @usa_swimming_time_standard.age_group, b: @usa_swimming_time_standard.b, bb: @usa_swimming_time_standard.bb, course: @usa_swimming_time_standard.course, event: @usa_swimming_time_standard.event, gender: @usa_swimming_time_standard.gender, standard_type: @usa_swimming_time_standard.standard_type } }
    assert_redirected_to usa_swimming_time_standard_url(@usa_swimming_time_standard)
  end

  test "should destroy usa_swimming_time_standard" do
    assert_difference("UsaSwimmingTimeStandard.count", -1) do
      delete usa_swimming_time_standard_url(@usa_swimming_time_standard)
    end

    assert_redirected_to usa_swimming_time_standards_url
  end
end
