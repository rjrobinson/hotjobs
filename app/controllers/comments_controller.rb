class CommentsController < ApplicationController
  def new
  end

  def create
    @incident = Incident.find(params[:incident_id])
    @comment = Comment.new(comment_params)
    @comment.incident_id = @incident.id
    if @comment.save
      redirect_to @incident, notice: "Comment added."
    else
      redirect_to @incident, notice: "Not added. There was an error."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_body).merge(user: current_user)
  end
end
