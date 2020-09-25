class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!
  
  def index
  end

  def new
    @avatars = params[:key].split(',');
    @avatars = [] if @avatars.nil?
  end

  def create
  end
end
