class UsersController < ApplicationController
  def friends
    if params[:query].present?
      @friends = current_user.friends.where("username ILIKE ?", "%#{params[:query]}%")
    else
      @friends = current_user.friends
    end
  end
end
