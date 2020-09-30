class PagesController < ApplicationController
  def home
  end

  def notifications
    @notifications = AvatarMemory.where(avatar: current_user.avatars.first).order('created_at DESC')
  end
end
