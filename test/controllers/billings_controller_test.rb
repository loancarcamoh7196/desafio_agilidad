require 'test_helper'

class BillingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get billings_create_url
    assert_response :success
  end

end
