require "test_helper"

class Api::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_transactions_index_url
    assert_response :success
  end

  test "should get show" do
    get api_transactions_show_url
    assert_response :success
  end
end
