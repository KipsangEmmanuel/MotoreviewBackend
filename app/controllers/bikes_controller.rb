class BikesController < ApplicationController
    before_action :set_bike, only: [:show, :update, :destroy]

    def index
      bikes = Bike.all
      render json: bikes
    end
  
    def show
      render json: @bike
    end
  
    def create
      bike = current_user.bikes.build(bike_params)
      if bike.save
        render json: bike, status: :created
      else
        render json: { errors: bike.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @bike.update(bike_params)
        render json: @bike
      else
        render json: { errors: @bike.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @bike.destroy
      head :no_content
    end
  
    private
  
    def set_bike
      @bike = Bike.find(params[:id])
    end
  
    def bike_params
      params.require(:bike).permit(:name, :description)
    end
end
