class ContinentsController < ApplicationController
    #disables csrf authentication
    protect_from_forgery with: :null_session


    def index 
       @continents = Continent.all
       render json: @continents 
    end
    
    def show
        @continent = Continent.find(params[:id])
        render json: @continent, serializer: ContinentDetailSerializer
    end

    def new
        @continent = Continent.new

    end

    def create
        continent = Continent.create(continent_params)

        redirect_to continents_path

    end

    def edit
        @continent = Continent.find(params[:id])
    end

    def update
    
        @continent = Continent.find(params[:id])

        @continent.update(continent_params)
    
    end

    def destroy
        
        @continent = Continent.find(params[:id])
        @continent.destroy
    
    end

    private  

    def continent_params
        params.require(:continent).permit(:picture, :denomination)
    end

end
