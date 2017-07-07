class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create

  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def prepare_user
    @current_user = current_user
  end

end
