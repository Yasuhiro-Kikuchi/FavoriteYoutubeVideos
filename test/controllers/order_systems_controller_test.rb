require 'test_helper'

class OrderSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_system = order_systems(:one)
  end

  test "should get index" do
    get order_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_order_system_url
    assert_response :success
  end

  test "should create order_system" do
    assert_difference('OrderSystem.count') do
      post order_systems_url, params: { order_system: { product: @order_system.product, store: @order_system.store } }
    end

    assert_redirected_to order_system_url(OrderSystem.last)
  end

  test "should show order_system" do
    get order_system_url(@order_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_system_url(@order_system)
    assert_response :success
  end

  test "should update order_system" do
    patch order_system_url(@order_system), params: { order_system: { product: @order_system.product, store: @order_system.store } }
    assert_redirected_to order_system_url(@order_system)
  end

  test "should destroy order_system" do
    assert_difference('OrderSystem.count', -1) do
      delete order_system_url(@order_system)
    end

    assert_redirected_to order_systems_url
  end
end
