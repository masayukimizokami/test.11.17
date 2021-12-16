class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]

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
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        redirect_to @profile, notice: "Profile was successfully created." 
       
      else
        render :new, status: :unprocessable_entity 
        
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        bindling.pry
        redirect_to @profile, notice: "Profile was successfully updated." 
        
      else
        render :edit, status: :unprocessable_entity 
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      redirect_to profiles_url, notice: "Profile was successfully destroyed." 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.fetch(:profile, :image,:name)
    end
end
