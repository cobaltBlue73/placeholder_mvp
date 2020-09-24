class MemoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def new
    @avatars = %w[fullbody-portrait-of-young-man-prev_a51e1t]
  end

  def create
  end
end
