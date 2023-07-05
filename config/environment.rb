# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:4000' # Replace with your frontend URL
  
      resource '*', headers: :any, methods: [:get, :post, :put, :delete]
    end
  end
  