class User < ApplicationRecord
    has_secure_password
    has_many :bikes
    has_many :reviews
end
