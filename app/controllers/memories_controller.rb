class MemoriesController < ApplicationController
  
  def index
  end

  def new
    @avatars = params[:key].split(',');
    @avatars = [] if @avatars.nil?
  end

  def create
  end
end
