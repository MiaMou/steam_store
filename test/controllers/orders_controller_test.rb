require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { status: @order.status, steam_id: @order.steam_id, user_id: @order.user_id } }
    end

    assert_redirected_to root_path
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end
end
