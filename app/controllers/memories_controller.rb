class MemoriesController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @memories = Memory.all

  end

  def new
    @avatars = params[:key].split(',');
    @avatars = [] if @avatars.nil?
  end

  def create
  end

  def show
    @memory = Memory.find(params[:id])
  end
end
