class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @memories = Memory.all

  end

  def new
    raise
    @avatars = params[:key].split(',')
    @avatars = [] if @avatars.nil?

    @memory = Memory.new
    # @memory.user = current_user
  end

  def create
    @avatars = params[:key].split(',')
    @memory = Memory.new
    @memory.user = current_user
    # ???????? How to add each avatar the memory

    if @memory.save
      redirect_to community_path
    else
      redirect_to friends_path
      # Add an error message
    end
  end

  def show
    @memory = Memory.find(params[:id])
  end
end
