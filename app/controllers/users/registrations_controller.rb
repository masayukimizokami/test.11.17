class Users::RegistrationsController < Devise::RegistrationsController

    # GET /resource/sign_up
    def new
      super
    end
    
    # POST /resource
    def create
      #super
      #独自ロジックを記述
    end
end