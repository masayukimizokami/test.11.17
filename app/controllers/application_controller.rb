class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_q


    def apprication
        @search = Search.new
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def update
        @search = Search.create(search_params)
        redirect_to @search
    end

    private

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
    
    def set_q
        @q = Room.ransack(params[:q])
    end


end
