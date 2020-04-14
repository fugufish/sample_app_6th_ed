require "test_helper"

class Shared::Header::ComponentTest < ViewComponent::TestCase
  test "render component when logged in" do
    render_inline(Shared::Header::Component.new(current_user: users(:michael), logged_in: true))

    assert_link("Users")
    assert_link("Profile")
    assert_link("Log out")
    refute_link("Log in")
  end

  test "render component when logged out" do
    render_inline(Shared::Header::Component.new(current_user: users(:michael), logged_in: false))

    assert_link("Log in")
    refute_link("Log out")
  end
end
