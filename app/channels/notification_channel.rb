class NotificationChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "world"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def alert_friend

  end
end