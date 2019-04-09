require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "Welcome"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About us"
  end
  
  test "should get directions" do
    get :directions
    asset_response :success
    assert_select "title", "Directions"
  end
end
