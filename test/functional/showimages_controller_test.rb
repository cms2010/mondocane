require 'test_helper'

class ShowimagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showimage" do
    assert_difference('Showimage.count') do
      post :create, :showimage => { }
    end

    assert_redirected_to showimage_path(assigns(:showimage))
  end

  test "should show showimage" do
    get :show, :id => showimages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => showimages(:one).to_param
    assert_response :success
  end

  test "should update showimage" do
    put :update, :id => showimages(:one).to_param, :showimage => { }
    assert_redirected_to showimage_path(assigns(:showimage))
  end

  test "should destroy showimage" do
    assert_difference('Showimage.count', -1) do
      delete :destroy, :id => showimages(:one).to_param
    end

    assert_redirected_to showimages_path
  end
end
