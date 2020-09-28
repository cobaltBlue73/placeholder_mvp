class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def notifications
    @notifications = current_user.avatars.first.memories
    # @notifications.first.user.avatars.first.photo.key ---- to get the key of the latest notification
    @memory = Memory.find(params[:memory_id])
  end
end
