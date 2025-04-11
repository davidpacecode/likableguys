require "application_system_test_case"

class RacesTest < ApplicationSystemTestCase
  setup do
    @race = races(:one)
  end

  test "visiting the index" do
    visit races_url
    assert_selector "h1", text: "Races"
  end

  test "should create race" do
    visit races_url
    click_on "New race"

    fill_in "Distance", with: @race.distance
    fill_in "Event no", with: @race.event_no
    fill_in "Final time", with: @race.final_time
    fill_in "Heat", with: @race.heat
    fill_in "Lane", with: @race.lane
    fill_in "Place", with: @race.place
    fill_in "Race date", with: @race.race_date
    fill_in "Seed time", with: @race.seed_time
    fill_in "Stroke", with: @race.stroke
    fill_in "Swim meet", with: @race.swim_meet_id
    click_on "Create Race"

    assert_text "Race was successfully created"
    click_on "Back"
  end

  test "should update Race" do
    visit race_url(@race)
    click_on "Edit this race", match: :first

    fill_in "Distance", with: @race.distance
    fill_in "Event no", with: @race.event_no
    fill_in "Final time", with: @race.final_time
    fill_in "Heat", with: @race.heat
    fill_in "Lane", with: @race.lane
    fill_in "Place", with: @race.place
    fill_in "Race date", with: @race.race_date
    fill_in "Seed time", with: @race.seed_time
    fill_in "Stroke", with: @race.stroke
    fill_in "Swim meet", with: @race.swim_meet_id
    click_on "Update Race"

    assert_text "Race was successfully updated"
    click_on "Back"
  end

  test "should destroy Race" do
    visit race_url(@race)
    click_on "Destroy this race", match: :first

    assert_text "Race was successfully destroyed"
  end
end
