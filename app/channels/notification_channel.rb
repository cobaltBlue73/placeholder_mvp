class NotificationChannel < ApplicationCable::Channel
  def subscribed
    memory = Memory.find(params[:id])
    stream_for memory
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
