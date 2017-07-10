class CommentsController < ApplicationController

  before_action :current_user

  def index
  end

  def new

  end

  def create
    @comment = current_user.comments.create(comment_params)
    @post_id = @comment.post_id
    @post = Post.where(id: @post_id)

    redirect_to post_path(:post_id)

  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

  def prepare_user
    @current_user = current_user
  end
end
