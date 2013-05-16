require 'test_helper'

class InviterequestsControllerTest < ActionController::TestCase
  setup do
    @inviterequest = inviterequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inviterequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inviterequest" do
    assert_difference('Inviterequest.count') do
      post :create, inviterequest: { email: @inviterequest.email, name: @inviterequest.name }
    end

    assert_redirected_to inviterequest_path(assigns(:inviterequest))
  end

  test "should show inviterequest" do
    get :show, id: @inviterequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inviterequest
    assert_response :success
  end

  test "should update inviterequest" do
    put :update, id: @inviterequest, inviterequest: { email: @inviterequest.email, name: @inviterequest.name }
    assert_redirected_to inviterequest_path(assigns(:inviterequest))
  end

  test "should destroy inviterequest" do
    assert_difference('Inviterequest.count', -1) do
      delete :destroy, id: @inviterequest
    end

    assert_redirected_to inviterequests_path
  end
end
