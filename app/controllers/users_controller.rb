class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :delete]

  def new
  end

  def index
    mani = User.find 1
    @posts = mani.posts
  end

  def show
    id = params[:id].to_i
    mani = User.find id
    @posts1 = mani.posts
    @posts = @posts1.find id
  end

  def edit
  end

  def update
    @users = User.find(params[:id])
    name = (params[:name])
    @user = @users.update name:name

    redirect_to root_path
  end

  def user_params
   params.require(:name)
 end

 def set_user
   @user = User.find(params[:id])
 end
end
