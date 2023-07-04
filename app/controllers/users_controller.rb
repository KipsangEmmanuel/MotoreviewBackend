# class UsersController < ApplicationController
#     def index
#       users = User.all
#       render json: users
#     end
  
#     def show
#       user = User.find(params[:id])
#       render json: user
#     end
  
#     def create
#       user = User.new(user_params)
#       if user.save
#         render json: user, status: :created
#       else
#         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#       end
#     end
  
#     private
  
#     def user_params
#       params.require(:user).permit(:name, :email, :password)
#     end
#   end
  

  class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save 
        render json: user, status: :created
      else
        render json: {error: ["Validation errors"]}, status: :unprocessable_entity
      end
    end
  
    def index
      users = User.all 
      render json: users
    end
  
    def show
      puts "Session ID: #{session[:user_id]}"
      if session[:user_id].present?
        user = User.find_by(id: session[:user_id])
        if user
          render json: user
        else
          render json: { error: 'User not found' }, status: :unprocessable_entity
        end
      else
        render json: { error: 'No one is logged in' }, status: :unprocessable_entity
      end
    end
    
    
  
    private 
  
    def user_params
      params.permit(:name, :email, :address, :password)
    end
  end