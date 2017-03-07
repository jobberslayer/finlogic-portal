require 'test_helper'

class AoiiControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get income_statement" do
    get aoii_controller_income_statement_url
    assert_response :success
  end

end
