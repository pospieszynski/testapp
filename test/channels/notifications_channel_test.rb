require "test_helper"

class NotificationsChannelTest < ActionCable::Connection::TestCase
  tests ApplicationCable::Connection

  test "subscribes" do
    connect
    # subscribe
    # assert subscription.confirmed?
  end
end
