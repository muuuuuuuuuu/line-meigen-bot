require 'test_helper'

class WebhookControllerTest < ActionDispatch::IntegrationTest
  test "should get reminder" do
    get webhook_reminder_url
    assert_response :success
  end

end
