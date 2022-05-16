class GeographicIconsController < ApplicationController
    def index 
        @geographic_icons = GeographicIcon.all
        render json: @geographic_icons
    end
    
    def show 
        @geographic_icons = GeographicIcon.find(params[:id])
        render json: @geographic_icons, serializer: IconDetailSerializer
        
    end

    def new 

    end

    def create

    end

    def edit

    end

    def updated

    end

    def destroy

    end
end
