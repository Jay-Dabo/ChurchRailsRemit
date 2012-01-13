require 'test_helper'

class ChurchinfosControllerTest < ActionController::TestCase
  setup do
    @churchinfo = churchinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:churchinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create churchinfo" do
    assert_difference('Churchinfo.count') do
      post :create, churchinfo: @churchinfo.attributes
    end

    assert_redirected_to churchinfo_path(assigns(:churchinfo))
  end

  test "should show churchinfo" do
    get :show, id: @churchinfo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @churchinfo.to_param
    assert_response :success
  end

  test "should update churchinfo" do
    put :update, id: @churchinfo.to_param, churchinfo: @churchinfo.attributes
    assert_redirected_to churchinfo_path(assigns(:churchinfo))
  end

  test "should destroy churchinfo" do
    assert_difference('Churchinfo.count', -1) do
      delete :destroy, id: @churchinfo.to_param
    end

    assert_redirected_to churchinfos_path
  end
end
