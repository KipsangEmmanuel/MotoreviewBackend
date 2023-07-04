class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception 

    #skip csrf protection
    skip_before_action :verify_authenticity_token
end
