# class SessionsController < ApplicationController
#     def create
#         user = User.find_by(email: params[:email])
#         if user&.authenticate(params[:password])
#           # Generate a token (e.g., using JWT) and return it as a response
#           render json: { token: 'your_token_here' }
#         else
#           render json: { error: 'Invalid email or password' }, status: :unauthorized
#         end
#       end
# end

class SessionsController < ApplicationController
    def create
        email = params[:email]
        password = params[:password]
      
        if email.present? && password.present?
          user = User.find_by(email: email)
          if user && user.authenticate(password)
            # puts "Session ID set: #{session[:user_id]}" # Debugging output
            session[:user_id] = user.id
            render json: { success: 'Logged in successfully' }
          else
            render json: { error: 'Invalid email or password' }
          end
        else
          render json: { error: 'Email and password are required' }
        end
      end
      

    def destroy
        session.delete(:user_id)
        render json: { success: 'Sad to see you leave' }
    end
end