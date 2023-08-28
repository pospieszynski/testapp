class NotificationsChannel < ApplicationCable::Channel

  def subscribed
    p "Current shard in NotificationsChannel#subscribed"
    p AnimalsRecord.current_shard
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
