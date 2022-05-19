class GeographicIconsController < ApplicationController
    #disables csrf authentication
    protect_from_forgery with: :null_session

    def index 
        @geographic_icons = GeographicIcon.all
        render json: @geographic_icons
    end
    
    def show 
        @geographic_icons = GeographicIcon.find(params[:id])
        render json: @geographic_icons, serializer: IconDetailSerializer
        
    end

    def new

        @geographic_icons = GeographicIcon.new

    end

    def create

        geographic_icons = GeographicIcon.create(geographic_icons_params)

        redirect_to = geographic_icons_path

    end

   
    def edit

        @geographic_icon = GeographicIcon.find(params[:id])

    end

    def update

        @geographic_icon = GeographicIcon.find(params[:id])

        @geographic_icon.update(geographic_icons_params)


    end

    def destroy

        @geographic_icon = GeographicIcon.find(params[:id])
        @geographic_icon.destroy

    end

    private  

    def geographic_icons_params
        params.require(:geographic_icon).permit(:picture, :denomination, :height, :story, :city_id)
    end
end
