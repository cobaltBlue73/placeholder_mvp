class CommentsController < ApplicationController
  def create
    @memory = Memory.find(params[:memory_id])

    @comment = Comment.new(comments_params)
    @comment.memory = @memory
    @comment.user = current_user

    if @comment.save
      redirect_to memory_path(@memory, anchor: "comment-#{@comment.id}")
    else
      render "memories/show"
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :user_id, :memory_id)
  end
end
