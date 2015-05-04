require 'test_helper'

class ItemtypesControllerTest < ActionController::TestCase
  setup do
    @itemtype = itemtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemtype" do
    assert_difference('Itemtype.count') do
      post :create, itemtype: { limitdistance: @itemtype.limitdistance, memo: @itemtype.memo, name: @itemtype.name }
    end

    assert_redirected_to itemtype_path(assigns(:itemtype))
  end

  test "should show itemtype" do
    get :show, id: @itemtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itemtype
    assert_response :success
  end

  test "should update itemtype" do
    patch :update, id: @itemtype, itemtype: { limitdistance: @itemtype.limitdistance, memo: @itemtype.memo, name: @itemtype.name }
    assert_redirected_to itemtype_path(assigns(:itemtype))
  end

  test "should destroy itemtype" do
    assert_difference('Itemtype.count', -1) do
      delete :destroy, id: @itemtype
    end

    assert_redirected_to itemtypes_path
  end
end
