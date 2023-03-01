require "test_helper"

class AdvancePaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advance_payments_index_url
    assert_response :success
  end
end
