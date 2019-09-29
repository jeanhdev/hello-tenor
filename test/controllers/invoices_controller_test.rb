require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get invoices_show_url
    assert_response :success
  end

end
