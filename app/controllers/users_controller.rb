class UsersController < ApplicationController
  def friends
    if params[:query].present?
      @friends = current_user.friends.where("username ILIKE ?", "%#{params[:query]}%").order('username asc')
    else
      @friends = current_user.friends.order('username asc')
    end
  end
end
