class GeographicIconsController < ApplicationController
    def index 
        @geographic_icons = GeographicIcon.all
        render json: @geographic_icons
    end
    
    def show 
        
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
