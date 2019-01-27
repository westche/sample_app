require "application_system_test_case"

class RunsTest < ApplicationSystemTestCase
  setup do
    @run = runs(:one)
  end

  test "visiting the index" do
    visit runs_url
    assert_selector "h1", text: "Runs"
  end

  test "creating a Run" do
    visit runs_url
    click_on "New Run"

    fill_in "Location", with: @run.Location
    fill_in "Miles", with: @run.Miles
    fill_in "Pace", with: @run.Pace
    fill_in "Run type", with: @run.Run_Type
    fill_in "Start time", with: @run.Start_Time
    fill_in "User", with: @run.user_id
    click_on "Create Run"

    assert_text "Run was successfully created"
    click_on "Back"
  end

  test "updating a Run" do
    visit runs_url
    click_on "Edit", match: :first

    fill_in "Location", with: @run.Location
    fill_in "Miles", with: @run.Miles
    fill_in "Pace", with: @run.Pace
    fill_in "Run type", with: @run.Run_Type
    fill_in "Start time", with: @run.Start_Time
    fill_in "User", with: @run.user_id
    click_on "Update Run"

    assert_text "Run was successfully updated"
    click_on "Back"
  end

  test "destroying a Run" do
    visit runs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Run was successfully destroyed"
  end
end
