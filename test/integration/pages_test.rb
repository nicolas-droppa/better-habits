require "test_helper"

class PagesTest < ActionDispatch::IntegrationTest
  test "home page renders clickable navigation links" do
    get root_url

    assert_response :success
    assert_select "a[href='/habits']", text: "My Habits"
    assert_select "a[href='/about']", text: "Get Started"
  end
end
