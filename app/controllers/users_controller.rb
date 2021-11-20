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
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :encrypted_password,)
  end
end
