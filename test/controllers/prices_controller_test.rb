require "test_helper"

class PricesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prices_new_url
    assert_response :success
  end

  test "should get index" do
    get prices_index_url
    assert_response :success
  end

  test "should get show" do
    get prices_show_url
    assert_response :success
  end
end
