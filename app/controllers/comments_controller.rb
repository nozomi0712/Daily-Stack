class CommentsController < ApplicationController
  def create
    if @comment = Comment.create(comment_params)
      respond_to do |format|
        format.html { redirect_to post_path(@comment.post_id) }
        format.json
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "コメントを削除しました"
    redirect_to post_path(params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comments).merge(user_id: current_user.id, post_id: params[:post_id].to_i)
  end
end
