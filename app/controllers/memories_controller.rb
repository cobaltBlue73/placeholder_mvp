require 'open-uri'

class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @memories = Memory.where(user_id: current_user.friends.pluck(:id).push(current_user.id)).order('created_at DESC')
  end

  def new
    @keys = params[:key]
    @avatars = params[:key].split(',').map do |id|
      Avatar.find(id)
    end

    @memory = Memory.new
  end

  def create
    @avatars = params[:avatars].map do |id|
      Avatar.find(id)
    end
    @memory = Memory.new
    @memory.avatars = @avatars
    @memory.user = current_user

    if params[:photo].present?
      @memory.photo.attach(io: URI.open(params[:photo]), filename: "memory#{@memory.id}.jpg", content_type: 'image/jpg')
    else
      @memory.photo = params[:memory][:photo]
    end

    if @memory.save
      @memory.avatars.each do |avatar|
        NotificationChannel.broadcast_to(
          avatar.user,
          {
            unread: avatar.user.avatar_memories.unread.count
          }
        )
      end

      redirect_to root_path
    end
  end

  def show
    @memory = Memory.find(params[:id])
    @avatar_memory = AvatarMemory.find_by(avatar: current_user.avatars.first, memory: @memory)
    @avatar_memory.read! if @avatar_memory

    @comments = @memory.comments.order('created_at desc')

    @comment = Comment.new
    @comment.memory = @memory
    @comment.user = current_user
  end

  private

  def memories_params
    params.require(:memory).permit(:user_id)
  end
end
