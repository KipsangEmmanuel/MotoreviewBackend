class ReviewsController < ApplicationController
    before_action :set_bike
    before_action :set_review, only: [:show, :update, :destroy, :like]
  
    def index
      reviews = @bike.reviews
      render json: reviews
    end
  
    def show
      render json: @review
    end
  
    def create
      review = current_user.reviews.build(review_params.merge(bike: @bike))
      if review.save
        render json: review, status: :created
      else
        render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @review.user == current_user && @review.update(review_params)
        render json: @review
      else
        render json: { errors: 'Unauthorized' }, status: :unauthorized
      end
    end
  
    def destroy
      if @review.user == current_user
        @review.destroy
        head :no_content
      else
        render json: { errors: 'Unauthorized' }, status: :unauthorized
      end
    end
  
    def like
      @review.increment!(:likes)
      render json: { message: 'Review liked' }
    end
  
    private
  
    def set_bike
      @bike = Bike.find(params[:bike_id])
    end
  
    def set_review
      @review = @bike.reviews.find(params[:id])
    end
  
    def review_params
      params.require(:review).permit(:content)
    end
end
