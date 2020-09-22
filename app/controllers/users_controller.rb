class UsersController < ApplicationController
  def friends
    @friends = current_user.friends
  end

end
