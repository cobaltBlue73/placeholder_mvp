require 'open-uri'

class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
    @memories = Memory.all
  end

  def new
    @keys = params[:key]
    @avatars = params[:key].split(',').map do |id|
      Avatar.find(id)
    end
    @memory = Memory.new
    # @avatars = [] if @avatars.nil?
  end

  def create
    @avatars = params[:avatars].map do |id|
      Avatar.find(id)
    end
    @memory = Memory.new()
    @memory.avatars = @avatars
    @memory.user = current_user

    if @memory.save
      @memory.photo.attach(io: URI.open(params[:photo]), filename: "memory#{@memory.id}.jpg", content_type: 'image/jpg')
      redirect_to root_path
    end
  end

  def show
    @memory = Memory.find(params[:id])
  end

  private

  def memories_params
    params.require(:memory).permit(:user_id)
  end
end
