class CitiesController < ApplicationController
    #disables csrf authentication
    protect_from_forgery with: :null_session

    def index 
        @cities = City.all 
        render json: @cities
    end
    
    def show
        @city = City.find(params[:id])
        render json: @city, serializer: CityDetailSerializer
        
    end

    def new
        @city = City.new 
    end

    def create
        city = City.create(city_params)

        redirect_to cities_path

    end 

    def edit

        @city = City.find(params[:id])

    end

    def update

        @city = City.find(params[:id])

        @city.update(city_params)

    end

    def destroy

        @city = City.find(params[:id])
        @city.destroy

    end

    private  

    def city_params
        params.require(:city).permit(:picture, :denomination, :land_size, :population, :continent_id)
    end
end
