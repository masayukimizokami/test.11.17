class ProfilesController < ApplicationController
 

  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /profiles or /profiles.json
  def create
   
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:notice]="プロフィールを編集しました"
     redirect_to user_path(@user)
    else
     flash[:notice]="プロフィールを編集できませんでした"
     render"edit"
    end

  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    
  end

  private
    def user_params
      params.require(:user).permit(:profile, :image,:name)
    end
end
