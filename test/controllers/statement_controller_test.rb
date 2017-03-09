require 'test_helper'

class StatementControllerTest < ActionDispatch::IntegrationTest
  test "should get :income" do
    get statement_:income_url
    assert_response :success
  end

  test "should get :balance" do
    get statement_:balance_url
    assert_response :success
  end

end
