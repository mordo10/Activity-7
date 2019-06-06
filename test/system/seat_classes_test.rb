require "application_system_test_case"

class SeatClassesTest < ApplicationSystemTestCase
  setup do
    @seat_class = seat_classes(:one)
  end

  test "visiting the index" do
    visit seat_classes_url
    assert_selector "h1", text: "Seat Classes"
  end

  test "creating a Seat class" do
    visit seat_classes_url
    click_on "New Seat Class"

    fill_in "Class name", with: @seat_class.class_name
    fill_in "Food service", with: @seat_class.food_service
    fill_in "Leg room", with: @seat_class.leg_room
    fill_in "Price", with: @seat_class.price
    fill_in "Seat type", with: @seat_class.seat_type
    click_on "Create Seat class"

    assert_text "Seat class was successfully created"
    click_on "Back"
  end

  test "updating a Seat class" do
    visit seat_classes_url
    click_on "Edit", match: :first

    fill_in "Class name", with: @seat_class.class_name
    fill_in "Food service", with: @seat_class.food_service
    fill_in "Leg room", with: @seat_class.leg_room
    fill_in "Price", with: @seat_class.price
    fill_in "Seat type", with: @seat_class.seat_type
    click_on "Update Seat class"

    assert_text "Seat class was successfully updated"
    click_on "Back"
  end

  test "destroying a Seat class" do
    visit seat_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seat class was successfully destroyed"
  end
end
