class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def notifications
    @notifications = AvatarMemory.where(avatar: current_user.avatars.first).order('created_at DESC')
  end
end
