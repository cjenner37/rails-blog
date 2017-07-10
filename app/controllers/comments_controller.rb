class CommentsController < ApplicationController

  def index
  end

  def new

  end

  def create
    @comment = current_user.comments.create(comment_params)
    @post = Post.find(params[:comment][:post_id])

    redirect_to @post
  end

  def edit
  end

  def show
    @user = User.where(id: params[:id])
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
