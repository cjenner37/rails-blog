class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
    prepare_user
    @post = current_user.posts.create(post_params)
    redirect_to user_path(current_user.id)
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
