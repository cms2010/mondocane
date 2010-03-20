require 'test_helper'

class PressitemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pressitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pressitem" do
    assert_difference('Pressitem.count') do
      post :create, :pressitem => { }
    end

    assert_redirected_to pressitem_path(assigns(:pressitem))
  end

  test "should show pressitem" do
    get :show, :id => pressitems(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pressitems(:one).to_param
    assert_response :success
  end

  test "should update pressitem" do
    put :update, :id => pressitems(:one).to_param, :pressitem => { }
    assert_redirected_to pressitem_path(assigns(:pressitem))
  end

  test "should destroy pressitem" do
    assert_difference('Pressitem.count', -1) do
      delete :destroy, :id => pressitems(:one).to_param
    end

    assert_redirected_to pressitems_path
  end
end
