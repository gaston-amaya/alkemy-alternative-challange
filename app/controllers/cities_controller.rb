class CitiesController < ApplicationController
    def index 
        @cities = City.all 
        render json: @cities
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
