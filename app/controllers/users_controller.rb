class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
  end

  def profile_update
    @user = User.find(params[:id])
    @user.plofile_update(user_params)
    redirect_to user_plofile_path(@user)
  end

  
  def index
    @users = User.all
    @rooms = Room.all
    @search = Search.new
  end

  def show
    @user = User.find(params[:id])
    @search = Search.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def registrantions
    @search = Search.new
  end

  def sessions
    @search = Search.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :encrypted_password,:image)
  end
end
