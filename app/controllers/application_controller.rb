class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?


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


end
