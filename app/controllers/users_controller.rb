class UsersController < ApplicationController

  before_action :prepare_user

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save 
      redirect_to @user
    else
      puts "Save Unsuccessful"
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def search_users
    @search_term = params[:name]
    @results = User.where('first_name LIKE?', '%' + @search_term + '%')
  end

  private

    def prepare_user
      @new_user = User.new
      @current_user = current_user
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
