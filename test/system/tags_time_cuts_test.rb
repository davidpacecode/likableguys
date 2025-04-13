require "application_system_test_case"

class TagsTimeCutsTest < ApplicationSystemTestCase
  setup do
    @tags_time_cut = tags_time_cuts(:one)
  end

  test "visiting the index" do
    visit tags_time_cuts_url
    assert_selector "h1", text: "Tags time cuts"
  end

  test "should create tags time cut" do
    visit tags_time_cuts_url
    click_on "New tags time cut"

    fill_in "Age group", with: @tags_time_cut.age_group
    fill_in "Bonus time", with: @tags_time_cut.bonus_time
    fill_in "Course", with: @tags_time_cut.course
    fill_in "Distance", with: @tags_time_cut.distance
    fill_in "Gender", with: @tags_time_cut.gender
    fill_in "Stroke", with: @tags_time_cut.stroke
    fill_in "Tags time", with: @tags_time_cut.tags_time
    click_on "Create Tags time cut"

    assert_text "Tags time cut was successfully created"
    click_on "Back"
  end

  test "should update Tags time cut" do
    visit tags_time_cut_url(@tags_time_cut)
    click_on "Edit this tags time cut", match: :first

    fill_in "Age group", with: @tags_time_cut.age_group
    fill_in "Bonus time", with: @tags_time_cut.bonus_time
    fill_in "Course", with: @tags_time_cut.course
    fill_in "Distance", with: @tags_time_cut.distance
    fill_in "Gender", with: @tags_time_cut.gender
    fill_in "Stroke", with: @tags_time_cut.stroke
    fill_in "Tags time", with: @tags_time_cut.tags_time
    click_on "Update Tags time cut"

    assert_text "Tags time cut was successfully updated"
    click_on "Back"
  end

  test "should destroy Tags time cut" do
    visit tags_time_cut_url(@tags_time_cut)
    click_on "Destroy this tags time cut", match: :first

    assert_text "Tags time cut was successfully destroyed"
  end
end
