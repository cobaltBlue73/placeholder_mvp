class UsersController < ApplicationController
  def friends
    if params[:query].present?
      @friends = current_user.friends.where("username ILIKE ?", "%#{params[:query]}%")
    else
      @friends = current_user.friends
    end
  end

  def notifications
    ActionCable.server.broadcast('notification_channel', 'You have visited the notification page.')
  end
end
