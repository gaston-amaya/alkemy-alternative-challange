class ContinentsController < ApplicationController
    def index 
       @continents = Continent.all
       render json: @continents 
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
