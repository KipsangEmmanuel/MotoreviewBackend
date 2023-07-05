class BikesController < ApplicationController
    before_action only: [:show, :update, :destroy]

    def index
      bikes = Bike.all
      render json: bikes
    end
  
    def show
        @bike = Bike.find(params[:id])
        render json: @bike
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Bike not found' }, status: :not_found
      end
      
  
    def create
      bike = Bike.new(bike_params)
      if bike.save
        render json: bike, status: :created
      else
        render json: { errors: bike.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
        @bike = Bike.find(params[:id])
        if @bike.update(bike_params)
          render json: @bike
        else
          render json: { errors: @bike.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
  
    def destroy
      @bike = Bike.find(params[:id])
      @bike.destroy
      head :no_content
    end
  
    private
  
    def set_bike
      @bike = Bike.find(params[:id])
    end
  
    def bike_params
      params.permit(:name, :image, :description, :user_id)
    end
end
