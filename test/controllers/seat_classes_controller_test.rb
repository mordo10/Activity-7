require 'test_helper'

class SeatClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seat_class = seat_classes(:one)
  end

  test "should get index" do
    get seat_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_seat_class_url
    assert_response :success
  end

  test "should create seat_class" do
    assert_difference('SeatClass.count') do
      post seat_classes_url, params: { seat_class: { class_name: @seat_class.class_name, food_service: @seat_class.food_service, leg_room: @seat_class.leg_room, price: @seat_class.price, seat_type: @seat_class.seat_type } }
    end

    assert_redirected_to seat_class_url(SeatClass.last)
  end

  test "should show seat_class" do
    get seat_class_url(@seat_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_seat_class_url(@seat_class)
    assert_response :success
  end

  test "should update seat_class" do
    patch seat_class_url(@seat_class), params: { seat_class: { class_name: @seat_class.class_name, food_service: @seat_class.food_service, leg_room: @seat_class.leg_room, price: @seat_class.price, seat_type: @seat_class.seat_type } }
    assert_redirected_to seat_class_url(@seat_class)
  end

  test "should destroy seat_class" do
    assert_difference('SeatClass.count', -1) do
      delete seat_class_url(@seat_class)
    end

    assert_redirected_to seat_classes_url
  end
end
