class RegistrationsController < Devise::RegistrationsController
    #disables csrf authentication
    protect_from_forgery with: :null_session

    respond_to :json

    def create
        build_resource(sign_up_params)
        resource.save 
        render json: resource, status: :created
    end
end
