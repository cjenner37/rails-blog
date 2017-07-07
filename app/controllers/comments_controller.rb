class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = current_user
    @user.comments.create(comment_params)

    redirect_to 
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
