class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
    @memories = Memory.all
  end

  def new
<<<<<<< HEAD
    raise
    @avatars = params[:key].split(',')
=======
    @avatars = params[:key].split(',').map do |id|
      Avatar.find(id)
    end
>>>>>>> master
    @avatars = [] if @avatars.nil?

    @memory = Memory.new
    # @memory.user = current_user
  end

  def create
    @avatars = params[]
    @memory = Memory.new()
    @memory.avatars = @avatars
  end

  def show
    @memory = Memory.find(params[:id])
  end

  private

  def memories_params
    params.require(:memory).permit(:user_id)
  end
end
