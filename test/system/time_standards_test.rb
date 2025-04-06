require "application_system_test_case"

class TimeStandardsTest < ApplicationSystemTestCase
  setup do
    @time_standard = time_standards(:one)
  end

  test "visiting the index" do
    visit time_standards_url
    assert_selector "h1", text: "Time standards"
  end

  test "should create time standard" do
    visit time_standards_url
    click_on "New time standard"

    fill_in "A", with: @time_standard.a
    fill_in "Aa", with: @time_standard.aa
    fill_in "Aaa", with: @time_standard.aaa
    fill_in "Aaaa", with: @time_standard.aaaa
    fill_in "Age", with: @time_standard.age
    fill_in "Age group", with: @time_standard.age_group
    fill_in "B", with: @time_standard.b
    fill_in "Bb", with: @time_standard.bb
    fill_in "Course", with: @time_standard.course
    fill_in "Distance", with: @time_standard.distance
    fill_in "Gender", with: @time_standard.gender
    fill_in "Sort order", with: @time_standard.sort_order
    fill_in "Standard type", with: @time_standard.standard_type
    fill_in "Stroke", with: @time_standard.stroke
    click_on "Create Time standard"

    assert_text "Time standard was successfully created"
    click_on "Back"
  end

  test "should update Time standard" do
    visit time_standard_url(@time_standard)
    click_on "Edit this time standard", match: :first

    fill_in "A", with: @time_standard.a
    fill_in "Aa", with: @time_standard.aa
    fill_in "Aaa", with: @time_standard.aaa
    fill_in "Aaaa", with: @time_standard.aaaa
    fill_in "Age", with: @time_standard.age
    fill_in "Age group", with: @time_standard.age_group
    fill_in "B", with: @time_standard.b
    fill_in "Bb", with: @time_standard.bb
    fill_in "Course", with: @time_standard.course
    fill_in "Distance", with: @time_standard.distance
    fill_in "Gender", with: @time_standard.gender
    fill_in "Sort order", with: @time_standard.sort_order
    fill_in "Standard type", with: @time_standard.standard_type
    fill_in "Stroke", with: @time_standard.stroke
    click_on "Update Time standard"

    assert_text "Time standard was successfully updated"
    click_on "Back"
  end

  test "should destroy Time standard" do
    visit time_standard_url(@time_standard)
    click_on "Destroy this time standard", match: :first

    assert_text "Time standard was successfully destroyed"
  end
end
