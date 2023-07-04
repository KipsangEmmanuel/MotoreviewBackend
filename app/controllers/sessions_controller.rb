class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
          # Generate a token (e.g., using JWT) and return it as a response
          render json: { token: 'your_token_here' }
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end
end
