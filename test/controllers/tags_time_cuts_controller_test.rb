require "test_helper"

class TagsTimeCutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tags_time_cut = tags_time_cuts(:one)
  end

  test "should get index" do
    get tags_time_cuts_url
    assert_response :success
  end

  test "should get new" do
    get new_tags_time_cut_url
    assert_response :success
  end

  test "should create tags_time_cut" do
    assert_difference("TagsTimeCut.count") do
      post tags_time_cuts_url, params: { tags_time_cut: { age_group: @tags_time_cut.age_group, bonus_time: @tags_time_cut.bonus_time, course: @tags_time_cut.course, distance: @tags_time_cut.distance, gender: @tags_time_cut.gender, stroke: @tags_time_cut.stroke, tags_time: @tags_time_cut.tags_time } }
    end

    assert_redirected_to tags_time_cut_url(TagsTimeCut.last)
  end

  test "should show tags_time_cut" do
    get tags_time_cut_url(@tags_time_cut)
    assert_response :success
  end

  test "should get edit" do
    get edit_tags_time_cut_url(@tags_time_cut)
    assert_response :success
  end

  test "should update tags_time_cut" do
    patch tags_time_cut_url(@tags_time_cut), params: { tags_time_cut: { age_group: @tags_time_cut.age_group, bonus_time: @tags_time_cut.bonus_time, course: @tags_time_cut.course, distance: @tags_time_cut.distance, gender: @tags_time_cut.gender, stroke: @tags_time_cut.stroke, tags_time: @tags_time_cut.tags_time } }
    assert_redirected_to tags_time_cut_url(@tags_time_cut)
  end

  test "should destroy tags_time_cut" do
    assert_difference("TagsTimeCut.count", -1) do
      delete tags_time_cut_url(@tags_time_cut)
    end

    assert_redirected_to tags_time_cuts_url
  end
end
