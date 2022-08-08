require "application_system_test_case"

class FightsTest < ApplicationSystemTestCase
  setup do
    @fight = fights(:one)
  end

  test "visiting the index" do
    visit fights_url
    assert_selector "h1", text: "Fights"
  end

  test "should create fight" do
    visit fights_url
    click_on "New fight"

    fill_in "Blue corner", with: @fight.blue_corner
    fill_in "Competition", with: @fight.competition
    fill_in "Date", with: @fight.date
    fill_in "Red corner", with: @fight.red_corner
    fill_in "Winner", with: @fight.winner
    click_on "Create Fight"

    assert_text "Fight was successfully created"
    click_on "Back"
  end

  test "should update Fight" do
    visit fight_url(@fight)
    click_on "Edit this fight", match: :first

    fill_in "Blue corner", with: @fight.blue_corner
    fill_in "Competition", with: @fight.competition
    fill_in "Date", with: @fight.date
    fill_in "Red corner", with: @fight.red_corner
    fill_in "Winner", with: @fight.winner
    click_on "Update Fight"

    assert_text "Fight was successfully updated"
    click_on "Back"
  end

  test "should destroy Fight" do
    visit fight_url(@fight)
    click_on "Destroy this fight", match: :first

    assert_text "Fight was successfully destroyed"
  end
end
