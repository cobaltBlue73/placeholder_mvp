class MemoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def new
    @avatars = params[:key].split(',')
    @friends = current_user.friends
  end

  def create
  end
end
