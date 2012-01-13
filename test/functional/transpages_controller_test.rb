require 'test_helper'

class TranspagesControllerTest < ActionController::TestCase
  test "should get remit_offer-types" do
    get :remit_offer-types
    assert_response :success
  end

  test "should get monthly_remit" do
    get :monthly_remit
    assert_response :success
  end

  test "should get wkly_incmome" do
    get :wkly_incmome
    assert_response :success
  end

  test "should get wkly_inc_types" do
    get :wkly_inc_types
    assert_response :success
  end

end
