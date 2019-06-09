require 'test_helper'

class UserShowTestTest < ActionDispatch::IntegrationTest
  test 'not activated user' do
    user = users(:lana)
    user.update_attributes(activated: false)
    get user_path(user)
    assert_redirected_to root_url
  end
end
