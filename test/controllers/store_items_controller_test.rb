require 'test_helper'

class StoreItemsControllerTest < ActionController::TestCase
  setup do
    @store_item = store_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_item" do
    assert_difference('StoreItem.count') do
      post :create, store_item: { description: @store_item.description, name: @store_item.name, order_id: @store_item.order_id, price: @store_item.price, rating_id: @store_item.rating_id }
    end

    assert_redirected_to store_item_path(assigns(:store_item))
  end

  test "should show store_item" do
    get :show, id: @store_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_item
    assert_response :success
  end

  test "should update store_item" do
    patch :update, id: @store_item, store_item: { description: @store_item.description, name: @store_item.name, order_id: @store_item.order_id, price: @store_item.price, rating_id: @store_item.rating_id }
    assert_redirected_to store_item_path(assigns(:store_item))
  end

  test "should destroy store_item" do
    assert_difference('StoreItem.count', -1) do
      delete :destroy, id: @store_item
    end

    assert_redirected_to store_items_path
  end
end
