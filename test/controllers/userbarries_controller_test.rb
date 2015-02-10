require 'test_helper'

class UserbarriesControllerTest < ActionController::TestCase
  setup do
    @userbarry = userbarries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userbarries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userbarry" do
    assert_difference('Userbarry.count') do
      post :create, userbarry: { ismatbarry@yahoo.fr: @userbarry.ismatbarry@yahoo.fr }
    end

    assert_redirected_to userbarry_path(assigns(:userbarry))
  end

  test "should show userbarry" do
    get :show, id: @userbarry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userbarry
    assert_response :success
  end

  test "should update userbarry" do
    patch :update, id: @userbarry, userbarry: { ismatbarry@yahoo.fr: @userbarry.ismatbarry@yahoo.fr }
    assert_redirected_to userbarry_path(assigns(:userbarry))
  end

  test "should destroy userbarry" do
    assert_difference('Userbarry.count', -1) do
      delete :destroy, id: @userbarry
    end

    assert_redirected_to userbarries_path
  end
end
