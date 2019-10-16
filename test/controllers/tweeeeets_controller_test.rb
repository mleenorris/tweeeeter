require 'test_helper'

class TweeeeetsControllerTest < ActionController::TestCase
  setup do
    @tweeeeet = tweeeeets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweeeeets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweeeeet" do
    assert_difference('Tweeeeet.count') do
      post :create, tweeeeet: { tweeeeet: @tweeeeet.tweeeeet }
    end

    assert_redirected_to tweeeeet_path(assigns(:tweeeeet))
  end

  test "should show tweeeeet" do
    get :show, id: @tweeeeet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweeeeet
    assert_response :success
  end

  test "should update tweeeeet" do
    patch :update, id: @tweeeeet, tweeeeet: { tweeeeet: @tweeeeet.tweeeeet }
    assert_redirected_to tweeeeet_path(assigns(:tweeeeet))
  end

  test "should destroy tweeeeet" do
    assert_difference('Tweeeeet.count', -1) do
      delete :destroy, id: @tweeeeet
    end

    assert_redirected_to tweeeeets_path
  end
end
