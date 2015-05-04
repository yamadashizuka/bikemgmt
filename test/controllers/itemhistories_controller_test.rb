require 'test_helper'

class ItemhistoriesControllerTest < ActionController::TestCase
  setup do
    @itemhistory = itemhistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemhistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemhistory" do
    assert_difference('Itemhistory.count') do
      post :create, itemhistory: { distance: @itemhistory.distance, end_date: @itemhistory.end_date, item_id: @itemhistory.item_id, memo: @itemhistory.memo, start_date: @itemhistory.start_date }
    end

    assert_redirected_to itemhistory_path(assigns(:itemhistory))
  end

  test "should show itemhistory" do
    get :show, id: @itemhistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itemhistory
    assert_response :success
  end

  test "should update itemhistory" do
    patch :update, id: @itemhistory, itemhistory: { distance: @itemhistory.distance, end_date: @itemhistory.end_date, item_id: @itemhistory.item_id, memo: @itemhistory.memo, start_date: @itemhistory.start_date }
    assert_redirected_to itemhistory_path(assigns(:itemhistory))
  end

  test "should destroy itemhistory" do
    assert_difference('Itemhistory.count', -1) do
      delete :destroy, id: @itemhistory
    end

    assert_redirected_to itemhistories_path
  end
end
