require "application_system_test_case"

class SwimMeetsTest < ApplicationSystemTestCase
  setup do
    @swim_meet = swim_meets(:one)
  end

  test "visiting the index" do
    visit swim_meets_url
    assert_selector "h1", text: "Swim meets"
  end

  test "should create swim meet" do
    visit swim_meets_url
    click_on "New swim meet"

    fill_in "Address", with: @swim_meet.address
    fill_in "Course", with: @swim_meet.course
    fill_in "End date", with: @swim_meet.end_date
    fill_in "Name", with: @swim_meet.name
    fill_in "Start date", with: @swim_meet.start_date
    fill_in "Venue", with: @swim_meet.venue
    click_on "Create Swim meet"

    assert_text "Swim meet was successfully created"
    click_on "Back"
  end

  test "should update Swim meet" do
    visit swim_meet_url(@swim_meet)
    click_on "Edit this swim meet", match: :first

    fill_in "Address", with: @swim_meet.address
    fill_in "Course", with: @swim_meet.course
    fill_in "End date", with: @swim_meet.end_date
    fill_in "Name", with: @swim_meet.name
    fill_in "Start date", with: @swim_meet.start_date
    fill_in "Venue", with: @swim_meet.venue
    click_on "Update Swim meet"

    assert_text "Swim meet was successfully updated"
    click_on "Back"
  end

  test "should destroy Swim meet" do
    visit swim_meet_url(@swim_meet)
    click_on "Destroy this swim meet", match: :first

    assert_text "Swim meet was successfully destroyed"
  end
end
