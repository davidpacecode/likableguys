require "application_system_test_case"

class UsaSwimmingTimeStandardsTest < ApplicationSystemTestCase
  setup do
    @usa_swimming_time_standard = usa_swimming_time_standards(:one)
  end

  test "visiting the index" do
    visit usa_swimming_time_standards_url
    assert_selector "h1", text: "Usa swimming time standards"
  end

  test "should create usa swimming time standard" do
    visit usa_swimming_time_standards_url
    click_on "New usa swimming time standard"

    fill_in "A", with: @usa_swimming_time_standard.a
    fill_in "Aa", with: @usa_swimming_time_standard.aa
    fill_in "Aaa", with: @usa_swimming_time_standard.aaa
    fill_in "Aaaa", with: @usa_swimming_time_standard.aaaa
    fill_in "Age", with: @usa_swimming_time_standard.age
    fill_in "Age group", with: @usa_swimming_time_standard.age_group
    fill_in "B", with: @usa_swimming_time_standard.b
    fill_in "Bb", with: @usa_swimming_time_standard.bb
    fill_in "Course", with: @usa_swimming_time_standard.course
    fill_in "Event", with: @usa_swimming_time_standard.event
    fill_in "Gender", with: @usa_swimming_time_standard.gender
    fill_in "Standard type", with: @usa_swimming_time_standard.standard_type
    click_on "Create Usa swimming time standard"

    assert_text "Usa swimming time standard was successfully created"
    click_on "Back"
  end

  test "should update Usa swimming time standard" do
    visit usa_swimming_time_standard_url(@usa_swimming_time_standard)
    click_on "Edit this usa swimming time standard", match: :first

    fill_in "A", with: @usa_swimming_time_standard.a
    fill_in "Aa", with: @usa_swimming_time_standard.aa
    fill_in "Aaa", with: @usa_swimming_time_standard.aaa
    fill_in "Aaaa", with: @usa_swimming_time_standard.aaaa
    fill_in "Age", with: @usa_swimming_time_standard.age
    fill_in "Age group", with: @usa_swimming_time_standard.age_group
    fill_in "B", with: @usa_swimming_time_standard.b
    fill_in "Bb", with: @usa_swimming_time_standard.bb
    fill_in "Course", with: @usa_swimming_time_standard.course
    fill_in "Event", with: @usa_swimming_time_standard.event
    fill_in "Gender", with: @usa_swimming_time_standard.gender
    fill_in "Standard type", with: @usa_swimming_time_standard.standard_type
    click_on "Update Usa swimming time standard"

    assert_text "Usa swimming time standard was successfully updated"
    click_on "Back"
  end

  test "should destroy Usa swimming time standard" do
    visit usa_swimming_time_standard_url(@usa_swimming_time_standard)
    click_on "Destroy this usa swimming time standard", match: :first

    assert_text "Usa swimming time standard was successfully destroyed"
  end
end
